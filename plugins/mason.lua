require('mason').setup{}

require("mason-lspconfig").setup {
    ensure_installed = {
        "clangd",
        -- "gopls", -- somehow, gols doesn't auto-import when installed from mason
        "intelephense",
        "pyright",
        "zls",
    },
}
