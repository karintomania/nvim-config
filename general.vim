"use system clipboard
set clipboard=unnamed 

" encode
set encoding=utf-8
set fileencodings=utf-8
set ambiwidth=double

" white space visible
set list
set listchars=tab:>_,trail:~,eol:↲

" Key binds
noremap H ^
noremap L $
inoremap kj <ESC>
noremap <C-a> ggVG

vnoremap >> >gv
vnoremap << <gv

let mapleader=" "
nnoremap <SPACE> <Nop>

" scroll
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" Color scheme
syntax enable
colorscheme codedark

" show line number
set number

" auto indent
set autoindent
set smartindent

" tab
set tabstop=4
set shiftwidth=4

" search
set smartcase
set hlsearch

" Status Line
" set laststatus=2 
set showmode 
" show command hit
set showcmd 
" show line number
set ruler 
" compliment menu
set wildmenu

" enable mouse scroll 
set mouse=n
