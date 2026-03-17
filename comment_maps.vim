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
  if &filetype == 'vim'
    call <SID>ToCommentOutLine('"')
  endif
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

" ------------------------------------------------------------------  
" Function: ToCommentOutLine()
" Description: Function to comment-out line of code   
" Parameters: comment_mark
" Returns: None
" ------------------------------------------------------------------  
function! s:ToCommentOutLine(comment_mark)
  if getline('.')[0] == a:comment_mark[0]
    execute "normal" "0xx"
  else
    execute "normal" "0i" . a:comment_mark . " "
  endif
endfunction


