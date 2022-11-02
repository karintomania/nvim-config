"use system clipboard
set clipboard=unnamed 
" to use xclip
" see :h clipboard and https://github.com/neovim/neovim/blob/master/runtime/autoload/provider/clipboard.vim
if !has('mac') && executable('xclip')
	:command Xclip call system("xclip -sel c", @")

	set g:clipboard
    let g:clipboard = {
          \   'name': 'myClipboard',
          \   'copy': {
          \      '+': ['xclip', '-quiet', '-i', '-selection', 'clipboard'],
          \      '*': ['xclip', '-o', '-selection', 'clipboard'],
          \    },
          \   'paste': {
          \      '+': ['xclip', '-quiet', '-i', '-selection', 'primary'],
          \      '*': ['xclip', '-o', '-selection', 'primary'],
          \   },
          \   'cache_enabled': 1,
          \ }
endif

" encode
set encoding=utf-8
set fileencodings=utf-8
set ambiwidth=double

" white space visible
set list
set listchars=tab:>_,trail:~,eol:↲

" Key binds
let mapleader=" "
nnoremap <SPACE> <Nop>

noremap H ^
noremap L $
inoremap kj <ESC>

nnoremap <leader>] >>
nnoremap <leader>[ <<
vnoremap <leader>] >gv
vnoremap <leader>[ <gv

nnoremap gb :bn<CR>
nnoremap gB :bp<CR>

" scroll
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" terminal
:tnoremap kj <C-\><C-n>
:command Term belowright split|term

" move between windows
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Color scheme
syntax enable
" colorscheme codedark
colorscheme gruvbox

" show line number
set number

" auto indent
set autoindent
set smartindent

" tab
set tabstop=4
set shiftwidth=4

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

