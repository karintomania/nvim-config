lua << EOF
local dap, dapui = require("dap"), require("dapui")
require("dapui").setup({
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "frames", size = 0.20 },
        { id = "breakpoints", size = 0.20 },
        { id = "watches", size = 0.20 },
        { id = "scopes", size = 0.40 },
      },
      size = 0.30,
      position = "left",
    },
  },
})

-- set listners to toggle dap-ui windows
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
EOF

" F10 to toggle dap-ui
nnoremap <silent> <F10> <Cmd>lua require'dapui'.toggle()<CR>
