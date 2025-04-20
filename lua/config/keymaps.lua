local map = vim.keymap.set
-- local lazymap = LazyVim.safe_keymap_set
local opt = { noremap = true, silent = true }

-- NOP映射
-- map('n', '<SPACE>', '<NOP>', opt)

-- 行跳转映射
map("n", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("v", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("o", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("n", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })
map("v", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })
map("o", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })

map("n", "gj", "<c-o>", opt)
map("n", "gk", "<c-i>", opt)

-- I 模式下jj退出
map("i", "jj", "<ESC>", opt)
map("i", "JJ", "<ESC>", opt)

-- I 模式移动光标
map("i", "<A-h>", "<Left>", opt)
map("i", "<A-j>", "<Down>", opt)
map("i", "<A-k>", "<Up>", opt)
map("i", "<A-l>", "<Right>", opt)
map("i", "<A-a>", "<C-o>^", opt)
map("i", "<A-e>", "<End>", opt)
map("i", "<A-u>", "<Backspace>", opt)
map("i", "<A-i>", "<Delete>", opt)
map("i", "<A-n>", "<C-o><C-e>", opt)
map("i", "<A-m>", "<C-o><C-y>", opt)

map("i", "<C-e>", "<C-o><C-e>", opt)
map("i", "<C-y>", "<C-o><C-y>", opt)
map("i", "<C-d>", "<C-o><C-d>", opt)
map("i", "<C-u>", "<C-o><C-u>", opt)
map("i", "zz", "<C-o>zz", opt)

-- 重新映射原有功能
map("n", "<leader>j", "J", opt)
map("n", "<leader>gi", "gi", { desc = "Go to Insert" })
map("n", "U", "<C-R>", opt)

-- Move Lines
map("i", "<A-S-J>", "<esc><cmd>m .+1<cr>==<leader>gi", { desc = "Move down" })
map("i", "<A-S-K>", "<esc><cmd>m .-2<cr>==<leader>gi", { desc = "Move up" })
map("v", "<A-J>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-K>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

function CopyBufferDir()
  local dir = vim.fn.expand("%:p:h")  -- 获取当前文件所在目录
  vim.fn.setreg("+", dir)             -- 复制到系统剪贴板（需 +clipboard 支持）
  vim.notify("Copied to clipboard: " .. dir, vim.log.levels.INFO)
end

map("n", "\\cp", CopyBufferDir, { desc = "Copy buffer directory" })
map("n", "\\cd", "<cmd>lcd %:p:h<CR>", { desc = "Set window cwd to file dir" })

-- 鼠标功能映射
-- 左键选中后复制到剪贴板（仅可视模式）
map("v", "<LeftRelease>", function()
  vim.cmd('normal! "+y') -- 复制到系统剪贴板
  vim.cmd("normal! gv")  -- 重新选中文本（可选）
end, opt)

-- 普通模式和插入模式下均生效
map('n', '<C-v>', '"+p', { noremap = true, silent = true })     -- 普通模式粘贴
map('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })  -- 插入模式粘贴
map('v', '<C-v>', '<C-r>+', { noremap = true, silent = true })  -- 插入模式粘贴

-- 设置鼠标右键在所有模式下粘贴系统剪贴板内容
map("n", "<RightMouse>", '"+p', opt)             -- 普通模式
map("i", "<RightMouse>", '<C-o>"+p', opt)        -- 插入模式
map("v", "<RightMouse>", '"+p', opt)             -- 可视模式
map("c", "<RightMouse>", "<C-r>+", opt)          -- 命令行模式
map("t", "<RightMouse>", '<C-\\><C-n>"+pi', opt) -- 终端模式
