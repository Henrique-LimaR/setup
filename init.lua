require('lazy_init')
require('plugins')
require('lualine_config')
require('keymaps')
require('treesitter')
require('completion')

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.colorcolumn = '80'

vim.cmd('colorscheme bamboo-vulgaris')
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
vim.api.nvim_set_keymap('n', '<C-x>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Tab-w>', 'v:lua.snippy_can_expand_or_advance() ? "<Plug>(snippy-expand-or-advance)" : "<Tab>"', {expr = true})
