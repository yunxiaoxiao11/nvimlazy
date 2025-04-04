-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- 启用鼠标支持并设置剪贴板共享
vim.opt.mouse = "a" -- 允许所有鼠标模式
vim.opt.clipboard = "unnamedplus" -- 共享系统剪贴板

-- 确保 win32yank 可用（Windows 剪贴板工具）
if vim.fn.has("win32") == 1 then
  vim.g.clipboard = {
    name = "win32yank",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = true,
  }
end

-- 设置 Windows 系统默认终端为 PowerShell
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "powershell"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
