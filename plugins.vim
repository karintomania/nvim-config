" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'ctrlpvim/ctrlp.vim'
Plug  'vim-vdebug/vdebug'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()
