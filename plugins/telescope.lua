require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-n>"] = false,
        ["<C-p>"] = false,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<C-j>"] = require("telescope.actions").move_selection_next,
      },
    },
  },
})

local builtin = require('telescope.builtin')

-- Define keymaps
local keymap = vim.keymap.set
keymap('n', '<leader>f', builtin.git_files, { desc = 'Telescope git files' })
keymap('n', '<leader>F', builtin.find_files, { desc = 'Telescope find files' })
keymap('n', '<leader>G', builtin.live_grep, { desc = 'Telescope live grep' })
keymap('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })

-- -- Open filepicker when opening a folder
vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        local buf = vim.api.nvim_get_current_buf()
        local filetype = vim.api.nvim_buf_get_option(buf, 'filetype')

        -- Execute the find_files command if it's nerdtree, which means folder
        if filetype == "nerdtree" then 
            builtin.find_files()
        end
    end
})
