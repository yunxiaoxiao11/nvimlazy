return {
  "crusj/bookmarks.nvim",
  event = "VeryLazy", -- 确保插件已加载
  opts = {
    mappings_enabled = false,
  },
  -- 如果插件需要手动初始化，添加：
  config = function(_, opts)
    require("bookmarks").setup(opts)
  end,
  keys = {
    { "\\<tab>", function() require("bookmarks").toggle_bookmarks() end, desc = "Toggle bookmark", },
    { "\\ba", function() require'bookmarks'.add_bookmarks(true) end, desc = "add global bookmarks", },
  },
}
