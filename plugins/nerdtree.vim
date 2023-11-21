" show hidden files
let NERDTreeShowHidden=1
" hide help
let NERDTreeMinimalUI=1
" "E" to toggle NERDTree
:command E NERDTreeToggle
:command F NERDTreeFind

" scroll by C-j,k
" without this line, the shortcut is overwritten somehow
autocmd FileType nerdtree nnoremap <buffer> <C-j> <C-e>
autocmd FileType nerdtree nnoremap <buffer> <C-k> <C-y>

autocmd FileType nerdtree exec "call LoadWorkspaceIfExists()"
function! LoadWorkspaceIfExists()
  let l:tree_root = b:NERDTree.root.path.str()
  let l:workspace_file = l:tree_root . "/workspace.vim"
  if filereadable(l:workspace_file)
    exec "source " . l:workspace_file
  endif
endfunction
