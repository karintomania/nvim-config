"ヤンクやペースト時クリップボードの内容を使用する
set clipboard=unnamed 

" encode
set encoding=utf-8
set fileencodings=utf-8
set ambiwidth=double

" white space visible
set list
set listchars=tab:>_,trail:~,eol:↲

" Key binds
nnoremap <D-Enter> o<ESC>
noremap H ^
noremap L $
inoremap kj <ESC>
nnoremap <D-]> >>
nnoremap <D-[> <<

vnoremap <D-]> >gv
vnoremap <D-[> <gv

" Color scheme
 syntax enable
colorscheme codedark
" colorscheme zenburn


" 行番号表示
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
" ステータスラインを常に表示
" set laststatus=2 
" 現在のモードを表示
set showmode 
" 打ったコマンドをステータスラインの下に表示
set showcmd 
" ステータスラインの右側にカーソルの現在位置を表示する
set ruler 
" メニュー補完
set wildmenu
