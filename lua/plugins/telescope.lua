return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      if LazyVim.pick.want() ~= "telescope" then
        return
      end
      local Keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- stylua: ignore
      vim.list_extend(Keys, {
        { "gu", "<cmd>Telescope lsp_references<cr>", desc = "References", nowait = true },
        { "gi", function()
                  require("telescope.builtin").lsp_implementations({ reuse_win = true })
                end,
          desc = "Goto Implementation" },
      })
    end,
  },
}
