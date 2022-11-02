" show hidden files
let NERDTreeShowHidden=1
" hide help
let NERDTreeMinimalUI=1
" "E" to toggle NERDTree
:command E NERDTreeToggle
:command F NERDTreeFind

" scroll by C-j,k
" without this line, the shortcut is overwritten somehow
autocmd FileType nerdtree nnoremap <buffer> <C-j> <C-e>
autocmd FileType nerdtree nnoremap <buffer> <C-k> <C-y>

