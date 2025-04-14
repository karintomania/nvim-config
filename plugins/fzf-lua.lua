local fzf = require'fzf-lua'

fzf.setup{}

-- Define keymaps
local keymap = vim.keymap.set


keymap("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "File picker" })
keymap("n", "<leader>F", "<cmd>FzfLua git_files<cr>", { desc = "Git File picker" })
keymap("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "Buffer picker" })
keymap("n", "<leader>d", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Diagnostics picker" })
keymap("n", "<leader>l", "<cmd>FzfLua lines<cr>", { desc = "Lines picker" })
keymap("n", "<leader>G", "<cmd>FzfLua grep<cr>", { desc = "Grep picker" })

keymap("n", "<leader>'", "<cmd>FzfLua resume<cr>", { desc = "Previous picker" })
