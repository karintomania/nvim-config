require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
		 "clojure",
		 "css",
		 "html",
		 "javascript",
		 "json",
		 "jsonnet",
		 "lua",
		 "luadoc",
		 "markdown",
		 "php",
		 "python",
		 "sql",
		 "vim",
		 "vimdoc",
	     },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Enable folding, but don't collapse folds by default.
vim.opt.foldlevelstart = 99
