local map = vim.api.nvim_set_keymap
local lazymap = LazyVim.safe_keymap_set
local unmap = vim.api.nvim_del_keymap
-- local map = LazyVim.safe_keymap_set
local opt = { noremap = true, silent = true }

map('n', '<SPACE>', '<NOP>', opt)   -- 防止空格移动
map('n', '<leader>u', '<NOP>', opt) -- 防止触发u

-- 行跳转映射
map("n", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("v", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("n", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })
map("v", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })

map('n', 'gj', '<c-o>', opt)
map('n', 'gk', '<c-i>', opt)

map('n', '{', '{b', opt)
map('n', '}', '}w', opt)
-- I 模式下jj退出
map('i', 'jj', '<ESC>', opt)
map('i', 'JJ', '<ESC>', opt)

-- I 模式移动光标
map('i', '<A-h>', '<Left>', opt)
map('i', '<A-j>', '<Down>', opt)
map('i', '<A-k>', '<Up>', opt)
map('i', '<A-l>', '<Right>', opt)
map('i', '<A-a>', '<Home>', opt)
map('i', '<A-e>', '<End>', opt)
map('i', '<A-d>', '<Delete>', opt)

-- 重新映射J
map('n', '<leader>j', 'J', opt)

-- Buffer 操作
map('n', 'J', ':BufferLineCyclePrev<CR>', opt)
map('n', 'K', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bl', ':BufferLineCloseRight<CR>', opt)
map('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opt)
map('n', '<leader>bo', ':BufferLineCloseOthers<CR>', opt)

-- other
map('n', 'U', '<C-R>', opt)

-- Move Lines
map('n', '<A-S-J>', '<cmd>m .+1<cr>==', { desc = 'Move down' })
map('n', '<A-S-K>', '<cmd>m .-2<cr>==', { desc = 'Move up' })
map('i', '<A-S-J>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' })
map('i', '<A-S-K>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' })
map('v', '<A-S-J>', ":m '>+1<cr>gv=gv", { desc = 'Move down' })
map('v', '<A-S-K>', ":m '<-2<cr>gv=gv", { desc = 'Move up' })

map('n', '<leader>r', ":lua runFireFox()<CR>", opt)

function runFireFox()
  vim.fn.execute('MarkdownPreview')
  vim.fn.execute('cd ~/')
  vim.fn.execute('!sh open_firefox.sh')
  vim.fn.execute('cd -')
end

-- map
-- local lazyterm = function()
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, true, true), 'n', false)
--     LazyVim.terminal(nil, { cwd = LazyVim.root() }) end
-- LazyVim.safe_keymap_set('i', '<c-/>', lazyterm, { desc = 'Terminal (Root Dir)' })

-- unmap --
-- flash
unmap('n', 's')
unmap('x', 's')
unmap('o', 's')
unmap('n', 'S')
unmap('x', 'S')
unmap('o', 'S')
-- buffer
unmap('n', '<leader>bb')
unmap('n', '<leader>`')
unmap('n', '<leader>bD')
-- lazygit
unmap('n', '<leader>gg')
unmap('n', '<leader>gG')
unmap('n', '<leader>gb')
unmap('n', '<leader>gB')
unmap('n', '<leader>gf')
unmap('n', '<leader>gl')
unmap('n', '<leader>gL')
-- lazyVim changeLog
unmap('n', '<leader>L')
-- windows
unmap('n', '<leader>w-')
unmap('n', '<leader>w|')
