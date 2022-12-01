" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
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
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Read setting files
source $HOME/.config/nvim/plugins/ag.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/dap.vim
source $HOME/.config/nvim/plugins/dap-ui.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/smooth-scroll.vim
source $HOME/.config/nvim/plugins/commentary.vim
source $HOME/.config/nvim/plugins/sneak.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/gitgutter.vim

" Custom scripts
source $HOME/.config/nvim/plugins/php-test/php-test.vim
