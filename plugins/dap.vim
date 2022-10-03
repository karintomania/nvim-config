lua << EOF
local dap = require('dap')
dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = { '/Users/hideaki.shimizu/.config/nvim/plugged/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9003,
    pathMappings = {
        ["/var/www/html"] = "${workspaceFolder}"
    }
  }
}
EOF


nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F2> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F3> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F4> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
" nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
" nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
