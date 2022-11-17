call plug#begin('~/.local/share/nvim/plugged') 
Plug 'junegunn/vim-easy-align' 
Plug 'https://github.com/junegunn/vim-github-dashboard.git' 
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'navarasu/onedark.nvim' 
Plug 'jiangmiao/auto-pairs'
Plug 'tribela/vim-transparent'
Plug 'nvim-lualine/lualine.nvim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'puremourning/vimspector'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'preservim/nerdtree'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'phanviet/vim-monokai-pro'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'puremourning/vimspector'

"Is only for javascript (I'm javascript elit)
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

let g:gruvbox_baby_telescope_theme = 2
let g:gruvbox_baby_keyword_style = "italic"

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-prettier', 'coc-json', 'coc-html', 'coc-css', 'coc-java', 'coc-python'] 

let g:loaded_github_dashboard_plugin = 1

lua << END
require('lualine').setup {

  options = { 
    section_separators = '',  
    icons_enabled = false,
    component_separators = '|',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_z = {{ 'location', separator = { left = 'φ ' }, left_padding = 10 }},
  },
}
END

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-s> :w<CR>

set nu 
set cul
syntax on
set cc=80
set title
set number
set hidden
set mouse=a
set showmatch
set noswapfile
set encoding=utf-8
colorscheme gruvbox-baby
filetype plugin indent on
set completeopt=menu,menuone,noselect
set autoindent expandtab tabstop=2 shiftwidth=2

