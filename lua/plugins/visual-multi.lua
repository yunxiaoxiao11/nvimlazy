return {
  {
    "mg979/vim-visual-multi",
    config = function()
      -- 这里可以添加一些对 vim-visual-multi 的自定义配置
      vim.g.VM_default_mappings = 0 -- 禁用默认映射
      vim.g.VM_leader = '\\'        -- 设置自定义前缀键
      -- vim.g.VM_maps = {
      --   ["Find Under"]         = '<C-S-j>',
      --   ["Find Subword Under"] = ',nr',
      --   ["Toggle Cursors"]     = ',t',
      -- }
    end
  }
}
