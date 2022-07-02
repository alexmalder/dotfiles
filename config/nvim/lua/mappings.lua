local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- visual
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- fm
map('n', 'f', ':FZF<CR>', opts)
map('n', 'r', ':Rg<CR>', opts)

-- resizing
map('n', '<space>l', ':vertical resize -15<CR>', opts)
map('n', '<space>h', ':vertical resize +15<CR>', opts)
map('n', '<space>j', ':resize -15<CR>', opts)
map('n', '<space>k', ':resize +15<CR>', opts)
map('n', '<space>n', ':LustyFilesystemExplorerFromHere<CR>', opts)
map('n', '<space>t', ':AsyncRun -mode=term -pos=bottom -rows=10 zsh<CR>', opts)

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

