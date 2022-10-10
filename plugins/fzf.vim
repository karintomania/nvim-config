" hide preview window by default
" when shown, it will appear on the list
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.8 } }
let g:fzf_preview_window = ['hidden,up,30%', 'ctrl-/']

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader>p :GFiles<CR>
nnoremap <silent> <C-b> :Buffers<CR>

