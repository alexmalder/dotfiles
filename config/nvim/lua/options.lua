require('gitsigns').setup{}
vim.cmd[[let g:rainbow_active = 1]]
vim.cmd[[colorscheme material]]
vim.cmd[[let g:fzf_layout = { 'down': '40%' }]]
vim.cmd("let g:polyglot_disabled = ['markdown', 'yaml']")
vim.opt.scrollback = 0
vim.opt.tabstop=4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.conceallevel = 1
vim.opt.concealcursor = 'niv'
vim.opt.path = vim.opt.path + ',.,..,/usr/include,./include,../include,*'
vim.opt.hidden = true
vim.opt.backup = false
vim.opt.writebackup = true
vim.opt.hlsearch = true
vim.opt.guicursor = ""
vim.opt.backupdir = '/tmp'
vim.opt.directory = '/tmp'
vim.opt.undodir = '/tmp'
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000
vim.opt.signcolumn = "yes"
vim.opt.number = true
vim.cmd[[autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif]]
vim.cmd[[map gf :e <cfile><CR>]]
--vim.cmd[[inoremap <silent><expr> <TAB> pumvisible() ? "<C-n>" : coc#refresh()]]
--vim.cmd[[inoremap <expr><S-TAB> pumvisible() ? "<C-p>" : "<C-h>"]]
--vim.cmd[[inoremap <silent><expr> <c-space> coc#refresh()]]
--vim.cmd[[inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>" ]]
vim.diagnostic.config({ virtual_text = false })
vim.cmd[[let g:nnn#layout = { 'down': '100%' }]]

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd[[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

--vim.cmd[[autocmd BufReadPost *.docx :%!pandoc -f docx -t markdown]]
--vim.cmd[[autocmd BufWritePost *.docx :!pandoc -f markdown -t docx % > tmp.docx]]
require'nvim-autopairs'.setup{}


cfg = {
    toggle_key = '<M-r>'
}
require'lsp_signature'.setup{cfg}
