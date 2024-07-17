local map = vim.api.nvim_set_keymap
local lazymap = LazyVim.safe_keymap_set
local unmap = vim.api.nvim_del_keymap
local opt = { noremap = true, silent = true }

-- NOP映射
-- map('n', '<SPACE>', '<NOP>', opt)
map('n', '<leader>i', '<NOP>', opt)
map('n', '<leader>r', '<NOP>', opt)
map('n', '<leader>R', '<NOP>', opt)

-- 行跳转映射
map("n", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("v", "H", "v:count == 0 ? 'g^' : '^'", { desc = "Line-start", expr = true, silent = true })
map("n", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })
map("v", "L", "v:count == 0 ? 'g$' : '$'", { desc = "Line-end", expr = true, silent = true })

map('n', 'gj', '<c-o>', opt)
map('n', 'gk', '<c-i>', opt)

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
map('i', '<A-u>', '<Backspace>', opt)
map('i', '<A-i>', '<Delete>', opt)
map('i', '<A-n>', '<C-o><C-e>', opt)
map('i', '<A-m>', '<C-o><C-y>', opt)

map('i', '<C-e>', '<C-o><C-e>', opt)
map('i', '<C-y>', '<C-o><C-y>', opt)
map('i', '<C-d>', '<C-o><C-d>', opt)
map('i', '<C-u>', '<C-o><C-u>', opt)

-- 重新映射J
map('n', '<leader>j', 'J', opt)
map('n', '<leader>gi', 'gi', { desc = 'Go to Insert' })
map('n', 'U', '<C-R>', opt)

-- Buffer 操作
-- 取消 K 键的默认映射
vim.keymap.set('n', 'K', '<nop>', { desc = 'Disable default K mapping' })
map('n', 'J', ':BufferLineCyclePrev<CR>', opt)
map('n', 'K', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bl', ':BufferLineCloseRight<CR>', opt)
map('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opt)
map('n', '<leader>bo', ':BufferLineCloseOthers<CR>', opt)

-- Move Lines
map('i', '<A-S-J>', '<esc><cmd>m .+1<cr>==<leader>gi', { desc = 'Move down' })
map('i', '<A-S-K>', '<esc><cmd>m .-2<cr>==<leader>gi', { desc = 'Move up' })
map('v', '<A-J>', ":m '>+1<cr>gv=gv", { desc = 'Move down' })
map('v', '<A-K>', ":m '<-2<cr>gv=gv", { desc = 'Move up' })

-- map('n', '<leader>r', ":lua runFireFox()<CR>", opt)

function runFireFox()
  vim.fn.execute('MarkdownPreview')
  vim.fn.execute('cd ~/')
  vim.fn.execute('!sh open_firefox.sh')
  vim.fn.execute('cd -')
end

-- 复制当前 buffer 所在的目录到剪贴板
function CopyBufferDir()
  local dir = vim.fn.expand('%:p:h')
  vim.fn.jobstart({ 'sh', '-c', 'echo -n "' .. dir .. '" | xclip -selection clipboard' })
  vim.notify('Copied current buffer directory: ' .. dir, vim.log.levels.INFO)
end

-- 将该功能绑定到 <leader>cd 快捷键上
vim.keymap.set('n', '<leader>pwd', CopyBufferDir, { desc = 'Copy current buffer directory' })
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
unmap('n', '<leader>-')
unmap('n', '<leader>|')
-- noice
map('n', '<leader>sn', '<NOP>', opt)
unmap('n', '<leader>snl')
unmap('n', '<leader>snh')
unmap('n', '<leader>sna')
unmap('n', '<leader>snd')
unmap('n', '<leader>snt')
-- telescope
unmap('n', '<leader>fb')
unmap('n', '<leader>ft')
