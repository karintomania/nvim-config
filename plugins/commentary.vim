" change default block comment (/*) to use //
autocmd FileType php setlocal commentstring=\/\/\ %s

xmap <leader>/  <Plug>Commentary
nmap <leader>/ <Plug>CommentaryLine
