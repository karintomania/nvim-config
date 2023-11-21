lua << EOF
require("nvim-ai-chat").setup({
    token = vim.g.open_ai_token,
    -- model="gpt-3.5-turbo",
    -- model="gpt-4",
    model="gpt-4-1106-preview",
})
EOF

" Exposes the plugin's functions for use as commands in Neovim.
" command! -nargs=1 Chat lua require("nvim-ai-chat").chat(<q-args>)
" command! -range -nargs=? Vchat lua require("nvim-ai-chat").chatSelection(<line1>, <line2>, <q-args>)

command! Chat lua require("nvim-ai-chat").ask()
