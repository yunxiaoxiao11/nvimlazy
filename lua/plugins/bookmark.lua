return {
  "crusj/bookmarks.nvim",
  event = "VeryLazy", -- 确保插件已加载
  opts = {
    mappings_enabled = true,
    save_file = vim.fn.expand("~/AppData/Local/nvim-data/bookmarks/bookmarks.json"),
  },
  -- 如果插件需要手动初始化，添加：
  config = function(_, opts)
    require("bookmarks").setup(opts)
  end,
}
