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
      },
    })
  end,
  keys = {
    { "<leader>bb", false },
    { "<leader>`", false },
    { "<leader>bD", false },
  },
}
