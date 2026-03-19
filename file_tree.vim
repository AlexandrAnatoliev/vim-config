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
    let file_and_directory_tree = <SID>SearchDirectoiesInList(file_tree)
    execute "vertical new"
    execute "setlocal buftype=nofile bufhidden=wipe nobuflisted"
    call append(0, file_and_directory_tree)
    let g:file_tree_is_display=1
  endif
endfunction
" }}}

" SearchDirectoiesInList function {{{
" ------------------------------------------------------------------  
" Function: SearchDirectoiesInList(list)
" Description: Function to search directories in the list  
" Parameters: list of files
" Returns: list of files and directories
" ------------------------------------------------------------------  
function! s:SearchDirectoiesInList(list)
  let file_and_directories_list = []
  for item in a:list
    if isdirectory(item)
      call add(file_and_directories_list, item)
    else
      call add(file_and_directories_list, item)
    endif
  endfor
  return file_and_directories_list
endfunction
" }}}

nnoremap <leader>y :call<SID>DisplayFileTree()<CR>
