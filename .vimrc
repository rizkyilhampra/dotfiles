set nocompatible
set t_Co=256
set mouse=a
set mousehide
set lazyredraw
set history=1000
set ttyfast
set laststatus=2
set showmode
set showcmd
set termguicolors
set background=dark
set ttyscroll=1 " Fix flicker when scrolling
set noswapfile

set noerrorbells
set novisualbell
set t_vb=

set relativenumber
set encoding=utf-8
set wrap
set scrolloff=8
set textwidth=79

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set foldenable
set foldmethod=syntax
set foldlevelstart=99

set autoindent
set expandtab
set smarttab

set hidden
set autoread
set fileformats+=mac
set nrformats-=octal

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

syntax on

let mapleader = " "
nnoremap <SPACE> <Nop>

" Remap 'jj' to escape insert mode
inoremap jj <Esc>

" Save file with Ctrl+S
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" clear search
nnoremap <silent> <leader>/ :let @/=''<cr>

colorscheme desert
