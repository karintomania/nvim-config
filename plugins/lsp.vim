
lua << EOF
-- This needs global install of intelephense: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#intelephense
require'lspconfig'.intelephense.setup{}
EOF

" goto actions
nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gy :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>

" Code actions
nnoremap <silent> <leader>ac :lua vim.lsp.buf.code_action()<CR>

" Rename
nnoremap <silent> <leader>rn :lua vim.lsp.buf.rename()<CR>

autocmd FileType php set iskeyword+=$
