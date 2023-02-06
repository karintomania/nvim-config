" set popup window size
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.8 } }

" hide preview window by default
" Ctrl- shows preview 
let g:fzf_preview_window = ['hidden,up,30%', 'ctrl-/']

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader>p :GFiles<CR>
nnoremap <silent> <C-b> :Buffers<CR>

" find from all text files
command! -bang -nargs=* Agt call fzf#vim#ag(<q-args>, '-t', <bang>0)
" find from hidden/gitignored files as well
command! -bang -nargs=* Agu call fzf#vim#ag(<q-args>, '-u', <bang>0)

