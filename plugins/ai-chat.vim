lua << EOF
require("nvim-ai-chat").setup({
	token = vim.g.open_ai_token,
	maxLength = 300, -- maximum length of the answer
})
EOF

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=1 Chat lua require("nvim-ai-chat").chat(<q-args>)
command! -range Vchat lua require("nvim-ai-chat").chatSelection(<line1>, <line2>)
