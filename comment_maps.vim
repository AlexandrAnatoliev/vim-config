" ============================================================================
" File: comment_maps.vim
" Description: Vim mappings to comments code lines in various languages 
" Author: AlexandAnatoliev
" Version: 0.1.41
" Last Modified: 08.03.2026
" ============================================================================

autocmd FileType vim,sh,sql,java 
      \ nnoremap <buffer> <leader>/ ma :call <SID>ToCommentOut()<cr>`a

" ------------------------------------------------------------------  
" Function: ToCommentOut()
" Description: Function to comment-out line of code   
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:ToCommentOut()
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
  " comment-out sql files {{{
  if &filetype == 'sql'
    if getline('.')[0] == '-'
      execute "normal" "0xxx"
    else
      execute "normal" "0i\-- "
    endif
  endif
  " }}}
  " comment-out java files {{{
  if &filetype == 'java'
    if getline('.')[0] == '/'
      execute "normal" "0xxx"
    else
      execute "normal" "0i\// "
    endif
  endif
  " }}}
endfunction

