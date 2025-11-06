return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            -- 取消 K 键映射
            { "K", nil },
          },
        },
      },
    },
  },
}
