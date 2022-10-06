" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'xdebug/vscode-php-debug', { 'do': 'npm install && npm run build'}
Plug 'simeji/winresizer'
Plug 'terryma/vim-smooth-scroll'
call plug#end()

" Read setting files
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/dap.vim
source $HOME/.config/nvim/plugins/dap-ui.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/smooth-scroll.vim
