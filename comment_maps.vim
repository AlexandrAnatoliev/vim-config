" ============================================================================
" File: comment_maps.vim
" Description: Vim mappings to comments code lines in various languages 
" Author: AlexandAnatoliev
" Version: 0.1.41
" Last Modified: 06.03.2026
" ============================================================================

" line comments {{{
" TODO нужна ли автогруппа для одной команды?
augroup CommentMaps
  autocmd!
  autocmd FileType vim nnoremap <buffer> <leader>/ :call ToCommentOut()<cr>
  autocmd FileType sh nnoremap <buffer> <leader>/ I# <esc>
  autocmd FileType sql nnoremap <buffer> <leader>/ I-- <esc>
  autocmd FileType java nnoremap <buffer> <leader>/ I// <esc>
augroup END
" }}}

" TODO для разных типов файлов
" TODO вернуть курсор на место 
" TODO закомментрировать выделенный блок кода
" ToCommentOut function {{{
" ------------------------------------------------------------------  
" Function: ToCommentOut()
" Description: Function to comment-out line of code   
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! ToCommentOut()
  if &filetype == 'vim'
    if getline('.')[0] == '"'
      execute "normal" "0xx"
    else
      execute "normal" "0i\" "
    endif
  endif
endfunction
" }}}

