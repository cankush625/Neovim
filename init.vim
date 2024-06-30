" Set the leader key
let mapleader=" "

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" search settings
:set ignorecase
:set smartcase
" Set cursor line
:set cursorline
" Highlight 88 character limit
:set colorcolumn=88
" Highlight matching braces
:set showmatch
" Set how many lines should be present below cursor for scroll
:set scrolloff=5

:set signcolumn=yes

:set clipboard+=unnamedplus " Use system clipboard as default register

call plug#begin('~/AppData/Local/nvim/site/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/fannheyward/coc-pyright' " Python Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-lua/plenary.nvim' " Dependency of telescope plugin which used for finding in files
Plug 'nvim-telescope/telescope.nvim' " Plugin for fuzzy search in files
Plug 'mhinz/vim-startify' " Plugin for fancy starting screen for VIM
Plug 'mbbill/undotree' " Undo history visualizer for VIM

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <C-d> :call CocActionAsync('jumpDefinition')<CR>

" Tabs
map <C-t> :tabnew<CR>
map <C-c> :tabclose<CR>
map <C-[> :tabprevious<CR>
map <C-]> :tabnext<CR>

" Make navigating around splits easy
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" Key remaps for Telescope
nnoremap <C-F> :Telescope find_files<CR>

" Clear the search highlight on pressing double escape
nnoremap <silent> <Esc><Esc> :let @/ = ""<CR>

" Select the auto-suggestion using ENTER key
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <F8> :TagbarToggle<CR>
nmap <F5> :UndotreeToggle<CR>

:set completeopt-=preview " For No Previews

:set guifont=DroidSansMono\ Nerd\ Font\ 11

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:tagbar_ctags_bin = "/opt/homebrew/bin/ctags"
