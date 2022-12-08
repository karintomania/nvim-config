lua << EOF
require("nvim-ai-chat").setup({
	token = '',
	maxLength = 500, -- maximum length of the answer
})
EOF

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=1 Chat lua require("nvim-ai-chat").chat(<q-args>)

