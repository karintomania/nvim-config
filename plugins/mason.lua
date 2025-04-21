require('mason').setup{}

list_android = {
}

list_default = {
        "clangd",
        -- "gopls", -- somehow, gols doesn't auto-import when installed from mason
        "intelephense",
        "pyright",
        "zls",
}
local ensure_installed = {}

if vim.g.platform == 'android' then
    ensure_installed = list_android
else
    ensure_installed = list_default
end

require("mason-lspconfig").setup {
    ensure_installed = ensure_installed,
}
