" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'roxma/nvim-yarp'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'preservim/nerdtree'
call plug#end()
