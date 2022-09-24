source $HOME/.config/nvim/general.vim

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'roxma/nvim-yarp'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
call plug#end()

source $HOME/.config/nvim/plugins/phpactor.vim

" Netrw
let g:netrw_liststyle = 3
let g:netrw_altv=1
let g:netrw_banner=0

" ncm2
"
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

":help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
