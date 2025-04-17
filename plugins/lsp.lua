-- LSP Configuration
local lspconfig = require('lspconfig')

lspconfig.clangd.setup{}
lspconfig.intelephense.setup{}
lspconfig.gopls.setup{}
lspconfig.pyright.setup{}
lspconfig.zls.setup{}
-- lspconfig.phpactor.setup{}

-- Key mappings
local keymap = vim.keymap.set

-- Goto actions
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { silent = true })
keymap('n', 'gy', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { silent = true })
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { silent = true })
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { silent = true })

-- Code actions
keymap('n', '<leader>ac', '<cmd>lua vim.lsp.buf.code_action()<CR>', { silent = true })

-- Rename
keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { silent = true })

-- Autocommands
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'php',
  callback = function()
    vim.opt_local.iskeyword:append('$')
  end,
})
