vim.g.mapleader = ' ' -- 设置leader键
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap -- 局部变量
local opt = { noremap = true, silent = true }
map('n', '<SPACE>', '<NOP>', opt)   -- 防止空格移动

-- 行跳转映射
map('n', 'H', '^', opt)
map('v', 'H', '^', opt)
map('n', 'L', '$', opt)
map('v', 'L', '$', opt)
-- map('n', 'dL', 'd$', opt)

-- I 模式下jj退出
map('i', 'jj', '<ESC>', opt)
map('i', 'JJ', '<ESC>', opt)

map('i', '<A-h>', '<Left>', opt)
map('i', '<A-j>', '<Down>', opt)
map('i', '<A-k>', '<Up>', opt)
map('i', '<A-l>', '<Right>', opt)
map('i', '<A-a>', '<Home>', opt)
map('i', '<A-e>', '<End>', opt)
map('i', '<A-d>', '<Delete>', opt)

map('n', '<leader>j', 'J', opt)

-- 左右Tab切换
map('n', 'gh', ':BufferLineCyclePrev<CR>', opt)
map('n', 'J', ':BufferLineCyclePrev<CR>', opt)
map('n', 'gl', ':BufferLineCycleNext<CR>', opt)
map('n', 'K', ':BufferLineCycleNext<CR>', opt)

-- other
map('n', 'U', '<C-R>', opt)

-- 窗口操作
-- map('n', '<leader>sv', ':vsp<CR>', opt)
-- map('n', '<leader>sh', ':sp<CR>', opt)
-- map('n', '<leader>sc', '<C-w>c', opt) -- 关闭当前
-- map('n', '<leader>so', '<C-w>o', opt) -- 关闭其他

-- Move Lines
map("n", "<A-S-J>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-S-K>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-S-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-S-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-S-J>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-S-K>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

map("n", "<leader>r", ":lua runFireFox()<CR>", opt)

function runFireFox()
    vim.fn.execute('MarkdownPreview')
    vim.fn.execute('cd ~/')
    vim.fn.execute('!sh open_firefox.sh')
    vim.fn.execute('cd -')
end
