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
