source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugins.vim

source $HOME/.config/nvim/plugins/phpactor.vim

" Netrw
let g:netrw_liststyle = 3
let g:netrw_altv=1
let g:netrw_banner=0

" ncm2
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

":help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
