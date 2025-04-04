return {
  "mg979/vim-visual-multi",
  event = "VeryLazy",
  keys = {
    { "<A-S-J>", "<Plug>(VM-Find-Under)", desc = "Multi-cursor find under" },
  },
  init = function()
    vim.g.VM_theme = "ocean"
    vim.g.VM_highlight_matches = "underline"
    vim.g.VM_leader = "\\"
    vim.g.VM_maps = {
      ["Add Cursor Down"] = "<M-N>",
      ["Add Cursor Up"] = "<M-M>",
      ["Select All"] = "\\A",
      ["Add Cursor At Pos"] = "\\\\",
      ["Start Regex Search"] = "\\/",
    }
    vim.g.VM_mouse_mappings = 1
    vim.g.VM_default_mappings = 0 -- 完全禁用默认映射，使用自定义映射
  end,
  config = function()
    -- 插件加载后的配置
  end,
}
