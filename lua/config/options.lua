-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.list = false
opt.wrap = true
opt.linebreak = true
opt.colorcolumn = "120" -- 显示竖线
-- opt.autochdir = true  -- 自动切换工作目录，存在部分问题，某些和工作目录相关的插件可能出现问题，如Persistence.nvim

-- neovide相关设置
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h11" -- text below applies for VimScript
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animation_length = 0.07
  vim.g.neovide_cursor_trail_size = 0.4
  vim.g.neovide_cursor_animate_in_insert_mode = false
end
