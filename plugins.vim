" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
" system
Plug 'nvim-lua/plenary.nvim'
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lualine/lualine.nvim'
Plug 'simeji/winresizer'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ThePrimeagen/refactoring.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

Plug 'zbirenbaum/copilot-cmp'
Plug 'zbirenbaum/copilot.lua'

" Plug 'tpope/vim-fugitive'
" Plug 'xdebug/vscode-php-debug', { 'do': 'npm install && npm run build'}
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'mfussenegger/nvim-dap'
" Plug 'rcarriga/nvim-dap-ui'
call plug#end()

" Read setting files
source $HOME/.config/nvim/plugins/ag.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/lualine.vim
source $HOME/.config/nvim/plugins/commentary.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/gitgutter.vim

source $HOME/.config/nvim/plugins/lsp.vim
source $HOME/.config/nvim/plugins/cmp.vim
source $HOME/.config/nvim/plugins/refactoring.vim

source $HOME/.config/nvim/plugins/copilot.vim

" source $HOME/.config/nvim/plugins/coc.vim
" source $HOME/.config/nvim/plugins/dap.vim
" source $HOME/.config/nvim/plugins/dap-ui.vim
