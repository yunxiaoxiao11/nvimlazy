return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        mode = "buffers",
        numbers = "ordinal",
        middle_mouse_command = "bdelete! %d",
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },
      },
    })
  end,
  keys = {
    { "<leader>bb", false },
    { "<leader>`", false },
    { "<leader>bD", false },
    { "J", "<cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
    { "K", "<cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<leader>bl", "<cmd>BufferLineCloseRight<CR>", desc = "Close right buffers" },
    { "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", desc = "Close left buffers" },
    { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "Close other buffers" },

    { "<C-1>", "<cmd>lua require('bufferline').go_to(1, true)<cr>" },
    { "<C-2>", "<cmd>lua require('bufferline').go_to(2, true)<cr>" },
    { "<C-3>", "<cmd>lua require('bufferline').go_to(3, true)<cr>" },
    { "<C-4>", "<cmd>lua require('bufferline').go_to(4, true)<cr>" },
    { "<C-5>", "<cmd>lua require('bufferline').go_to(5, true)<cr>" },
    { "<C-6>", "<cmd>lua require('bufferline').go_to(6, true)<cr>" },
    { "<C-7>", "<cmd>lua require('bufferline').go_to(7, true)<cr>" },
    { "<C-8>", "<cmd>lua require('bufferline').go_to(8, true)<cr>" },
    { "<C-9>", "<cmd>lua require('bufferline').go_to(9, true)<cr>" },
    { "<C-$>", "<cmd>lua require('bufferline').go_to(-1, true)<cr>" },
  },
}
