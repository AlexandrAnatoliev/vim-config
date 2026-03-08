" ============================================================================
" File: comment_maps.vim
" Description: Vim mappings to comments code lines in various languages 
" Author: AlexandAnatoliev
" Version: 0.1.41
" Last Modified: 08.03.2026
" ============================================================================

" TODO нужна ли автогруппа для одной команды?
" line comments {{{
augroup CommentMaps
  autocmd!
  autocmd FileType vim,sh nnoremap <buffer> <leader>/ :call ToCommentOut()<cr>
"   autocmd FileType sh nnoremap <buffer> <leader>/ :call ToCommentOut()<cr>
  autocmd FileType sql nnoremap <buffer> <leader>/ I-- <esc>
  autocmd FileType java nnoremap <buffer> <leader>/ I// <esc>
augroup END
" }}}

" TODO для разных типов файлов
" TODO вернуть курсор на место 
" TODO закомментрировать выделенный блок кода
" ------------------------------------------------------------------  
" Function: ToCommentOut()
" Description: Function to comment-out line of code   
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! ToCommentOut()
" comment-out vim files {{{
  if &filetype == 'vim'
    if getline('.')[0] == '"'
      execute "normal" "0xx"
    else
      execute "normal" "0i\" "
    endif
  endif
" }}}
" comment-out bash files {{{
  if &filetype == 'sh'
    if getline('.')[0] == '#'
      execute "normal" "0xx"
    else
      execute "normal" "0i\# "
    endif
  endif
" }}}
endfunction

