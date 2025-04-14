""""""""""""
" Settings "
""""""""""""
"use system clipboard
set clipboard+=unnamedplus

" encode
set encoding=utf-8
set fileencodings=utf-8
set ambiwidth=double

" white space visible
set list
set listchars=tab:>_,trail:~,eol:↲
set fillchars=eob:\ 

set nofixeol
set nofixendofline

" Key binds
let mapleader=" "
nnoremap <SPACE> <Nop>

" Color scheme
syntax enable
" colorscheme codedark
" colorscheme gruvbox
set termguicolors
colorscheme catppuccin_mocha


" show line number
set number

" auto indent
set autoindent
set smartindent

" tab
set tabstop=4
set shiftwidth=4
set expandtab

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Status Line
" set laststatus=2 
set showmode 
" show command hit
set showcmd 
" show line number
set ruler 
" compliment menu
set wildmenu
set wildignorecase

" enable mouse scroll 
set mouse=a

""""""""""""
" Mappings "
""""""""""""
noremap gh ^
noremap gl $

nnoremap ge G

inoremap jj <ESC>

" Indentation
vnoremap > >gv
vnoremap < <gv

" scroll
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

set shell=zsh\ -i


""""""""""""
" Scripts  "
""""""""""""
command! -nargs=0 CopyRelativePath let @+ = fnamemodify(expand("%"), ":.")
