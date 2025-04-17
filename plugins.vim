" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
" System
Plug 'nvim-lua/plenary.nvim'
Plug 'ryanoasis/vim-devicons'

" LSP
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'

" Auto completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" Copilot
Plug 'zbirenbaum/copilot-cmp'
Plug 'zbirenbaum/copilot.lua'

" Others 
Plug 'Raimondi/delimitMate'
Plug 'ThePrimeagen/refactoring.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'ibhagwan/fzf-lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'preservim/nerdtree'
Plug 'simeji/winresizer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

" Read setting files
source $HOME/.config/nvim/plugins/ag.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/commentary.vim

" set up lsp (needs to be this order)
luafile $HOME/.config/nvim/plugins/mason.lua
luafile $HOME/.config/nvim/plugins/lsp.lua


luafile $HOME/.config/nvim/plugins/cmp.lua
luafile $HOME/.config/nvim/plugins/copilot.lua
luafile $HOME/.config/nvim/plugins/fzf-lua.lua
luafile $HOME/.config/nvim/plugins/lualine.lua
luafile $HOME/.config/nvim/plugins/refactoring.lua
luafile $HOME/.config/nvim/plugins/treesitter.lua
