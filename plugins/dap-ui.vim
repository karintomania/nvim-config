lua << EOF
local dap, dapui = require("dap"), require("dapui")
require("dapui").setup({
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        "breakpoints",
        "watches",
        { id = "scopes", size = 0.25 },
      },
      size = 0.30,
      position = "left",
    },
  },
})

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

nnoremap <silent> <F10> <Cmd>lua require'dapui'.toggle()<CR>
