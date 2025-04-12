return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- lua = { "stylua" },
      python = { "black", "isort" },
      -- 其他文件类型...
    },
    format_on_save = {
      -- timeout_ms = 500,
      lsp_fallback = true,
    },
    -- 自定义格式化器参数
    formatters = {
      black = {
        args = { "--line-length", "120", "--quiet", "-" },
      },
    },
  },
}
