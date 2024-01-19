vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

vim.wo.number = true
vim.wo.cursorline = true
vim.wo.colorcolumn = '80'

vim.cmd('colorscheme kanagawa-wave')
vim.cmd([[set background=dark]])
vim.o.title = true
vim.o.hidden = true
vim.o.showmatch = true
vim.o.swapfile = false
vim.o.encoding = 'utf-8'

vim.o.mouse = 'a'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.autoindent = true
vim.bo.expandtab = true
vim.o.laststatus = 2

vim.cmd('set guicursor=i:ver1')
vim.cmd('set guicursor+=a:blinkon1')

