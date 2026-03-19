" ============================================================================
" File: file_tree.vim
" Description: Display project file tree 
" Author: AlexandAnatoliev
" Version: 0.1.52
" Last Modified: 18.03.2026
" ============================================================================

let g:file_tree_is_display=0

" DisplayFileTree function {{{
" ------------------------------------------------------------------  
" Function: DisplayFileTree()
" Description: Function to display project file tree  
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:DisplayFileTree()
  if g:file_tree_is_display
    execute "q"
    let g:file_tree_is_display=0
  else
    let file_tree = glob('{.,}*', 0, 1)
    execute "vertical new"
    execute "setlocal buftype=nofile bufhidden=wipe nobuflisted"
    call append(0, file_tree)
    let g:file_tree_is_display=1
  endif
endfunction
" }}}

nnoremap <leader>y :call<SID>DisplayFileTree()<CR>
