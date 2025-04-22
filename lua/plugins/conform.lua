return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black", "isort" },
      -- 其他文件类型...
    },
    -- 自定义格式化器参数
    formatters = {
      black = {
        args = { "--line-length", "120", "--quiet", "-" },
      },
    },
  },
}
