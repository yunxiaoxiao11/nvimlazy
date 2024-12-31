---@class snacks.input
---@overload fun(opts: snacks.input.Opts, on_confirm: fun(value?: string)): snacks.win
local M = setmetatable({}, {
  __call = function(M, ...)
    return M.input(...)
  end,
})

M.meta = {
  desc = "Better `vim.ui.input`",
  needs_setup = true,
}

---@alias snacks.input.Pos "left"|"title"|false

---@class snacks.input.Config
---@field enabled? boolean
---@field win? snacks.win.Config|{}
---@field icon? string
---@field icon_pos? snacks.input.Pos
---@field prompt_pos? snacks.input.Pos
local defaults = {
  icon = " ",
  icon_hl = "SnacksInputIcon",
  icon_pos = "left",
  prompt_pos = "title",
  win = { style = "input" },
  expand = true,
}

Snacks.util.set_hl({
  Icon = "DiagnosticHint",
  Normal = "Normal",
  Border = "DiagnosticInfo",
  Title = "DiagnosticInfo",
  Prompt = "SnacksInputTitle",
}, { prefix = "SnacksInput", default = true })

Snacks.config.style("input", {
  backdrop = false,
  position = "float",
  border = "rounded",
  title_pos = "center",
  height = 1,
  width = 60,
  relative = "editor",
  noautocmd = true,
  row = 2,
  -- relative = "cursor",
  -- row = -3,
  -- col = 0,
  wo = {
    winhighlight = "NormalFloat:SnacksInputNormal,FloatBorder:SnacksInputBorder,FloatTitle:SnacksInputTitle",
    cursorline = false,
  },
  bo = {
    filetype = "snacks_input",
    buftype = "prompt",
  },
  --- buffer local variables
  b = {
    completion = false, -- disable blink completions in input
  },
  keys = {
    n_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "n" },
    i_esc = { "<esc>", { "cmp_close", "stopinsert" }, mode = "i" },
    i_cr = { "<cr>", { "cmp_accept", "confirm" }, mode = "i" },
    i_tab = { "<tab>", { "cmp_select_next", "cmp" }, mode = "i" },
    q = "cancel",
  },
})

local ui_input = vim.ui.input

---@class snacks.input.Opts: snacks.input.Config|{}
---@field prompt? string
---@field default? string
---@field completion? string
---@field highlight? fun()

---@class snacks.input.ctx
---@field opts? snacks.input.Opts
---@field win? snacks.win
local ctx = {}

---@param opts? snacks.input.Opts
---@param on_confirm fun(value?: string)
function M.input(opts, on_confirm)
  assert(type(on_confirm) == "function", "`on_confirm` must be a function")

  local parent_win = vim.api.nvim_get_current_win()
  local mode = vim.fn.mode()

  local function confirm(value)
    ctx.win = nil
    ctx.opts = nil
    vim.cmd.stopinsert()
    vim.schedule(function()
      if vim.api.nvim_win_is_valid(parent_win) then
        vim.api.nvim_set_current_win(parent_win)
        if mode == "i" then
          vim.cmd("startinsert")
        end
      end
      on_confirm(value)
    end)
  end

  opts = Snacks.config.get("input", defaults, opts) --[[@as snacks.input.Opts]]
  opts.prompt = opts.prompt or "Input"
  opts.prompt = vim.trim(opts.prompt)
  opts.prompt = opts.prompt_pos == "title" and opts.prompt:gsub(":$", "") or opts.prompt

  local title, statuscolumn = {}, {} ---@type string[], string[]
  local function add(text, hl, pos)
    if pos == "title" then
      table.insert(title, { " " .. text, hl })
    else
      table.insert(statuscolumn, "%#" .. hl .. "#" .. text)
    end
  end

  if opts.icon_pos and (opts.icon or "") ~= "" then
    add(opts.icon, "SnacksInputIcon", opts.icon_pos)
  end
  add(opts.prompt, "SnacksInputBorder", opts.prompt_pos)

  if next(title) then
    table.insert(title, { " " })
  end

  opts.win = Snacks.win.resolve("input", opts.win, {
    enter = true,
    title = next(title) and title or nil,
    bo = {
      modifiable = true,
      completefunc = "v:lua.Snacks.input.complete",
      omnifunc = "v:lua.Snacks.input.complete",
    },
    wo = {
      statuscolumn = next(statuscolumn) and " " .. table.concat(statuscolumn, " ") .. " " or " ",
    },
    actions = {
      cancel = function(self)
        confirm()
        self:close()
      end,
      stopinsert = function()
        vim.cmd("stopinsert")
      end,
      confirm = function(self)
        confirm(self:text())
        self:close()
      end,
      cmp = function()
        return vim.fn.pumvisible() == 0 and "<c-x><c-u>"
      end,
      cmp_close = function()
        return vim.fn.pumvisible() == 1 and "<c-e>"
      end,
      cmp_accept = function()
        return vim.fn.pumvisible() == 1 and "<c-y>"
      end,
      cmp_select_next = function()
        return vim.fn.pumvisible() == 1 and "<c-n>"
      end,
      cmp_select_prev = function()
        return vim.fn.pumvisible() == 1 and "<c-p>"
      end,
    },
  })

  local parent_zindex = vim.api.nvim_win_get_config(parent_win).zindex
  opts.win.zindex = parent_zindex and parent_zindex + 1 or opts.win.zindex

  local min_width = opts.win.width or 60
  if opts.expand then
    ---@param self snacks.win
    opts.win.width = function(self)
      local w = type(min_width) == "function" and min_width(self) or min_width --[[@as number]]
      return math.max(w, vim.api.nvim_strwidth(self:text()) + 5)
    end
  end

  local win = Snacks.win(opts.win)
  ctx = { opts = opts, win = win }
  vim.fn.prompt_setprompt(win.buf, "")
  vim.cmd.startinsert()
  if opts.default then
    vim.api.nvim_buf_set_lines(win.buf, 0, -1, false, { opts.default })
    vim.bo[win.buf].modified = false
    vim.api.nvim_win_set_cursor(win.win, { 1, #opts.default + 1 })
  end
  vim.fn.prompt_setcallback(win.buf, function(text)
    confirm(text)
    win:close()
  end)
  vim.fn.prompt_setinterrupt(win.buf, function()
    confirm()
    win:close()
  end)

  if opts.expand then
    vim.api.nvim_create_autocmd("TextChangedI", {
      buffer = win.buf,
      callback = function()
        vim.bo[win.buf].modified = false
        if vim.api.nvim_win_is_valid(parent_win) then
          vim.api.nvim_win_call(parent_win, function()
            win:update()
          end)
        end
        vim.api.nvim_win_call(win.win, function()
          vim.fn.winrestview({ leftcol = 0 })
        end)
      end,
    })
  end

  return win
end

---@param findstart number
---@param base string
---@private
function M.complete(findstart, base)
  local completion = ctx.opts.completion
  if findstart == 1 then
    return 0
  end
  if not completion then
    return {}
  end
  local ok, results = pcall(vim.fn.getcompletion, base, completion)
  return ok and results or {}
end

function M.enable()
  vim.ui.input = M.input
end

function M.disable()
  vim.ui.input = ui_input
end

---@private
function M.health()
  if Snacks.config.get("input", defaults).enabled then
    if vim.ui.input == M.input then
      Snacks.health.ok("`vim.ui.input` is set to `Snacks.input`")
    else
      Snacks.health.error("`vim.ui.input` is not set to `Snacks.input`")
    end
  end
end

return M
