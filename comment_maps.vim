" ============================================================================
" File: comment_maps.vim
" Description: Vim mappings to comments code lines in various languages 
" Author: AlexandAnatoliev
" Version: 0.1.53
" Last Modified: 22.03.2026
" ============================================================================

autocmd FileType vim,sh,sql,java,php 
      \ nnoremap <buffer> <leader>/ ma :call <SID>ToCommentOut()<cr>`a

" ToCommentOut function {{{
" ------------------------------------------------------------------  
" Function: ToCommentOut()
" Description: Function to comment-out line of code   
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:ToCommentOut()
  if &filetype == 'vim'
    call <SID>ToCommentOutLine('"')
  elseif &filetype == 'sh'
    call <SID>ToCommentOutLine('#')
  elseif &filetype == 'sql'
    call <SID>ToCommentOutLine('--')
  elseif &filetype == 'java'
    call <SID>ToCommentOutLine('//')
  elseif &filetype == 'php'
    call <SID>ToCommentOutLine('//')
  endif
endfunction
" }}}

" ToCommentOutLine function {{{
" ------------------------------------------------------------------  
" Function: ToCommentOutLine()
" Description: Function to comment-out line of code   
" Parameters: comment_mark
" Returns: None
" ------------------------------------------------------------------  
function! s:ToCommentOutLine(comment_mark)
  if getline('.')[0] == a:comment_mark[0]
    if len(a:comment_mark) == 2
      execute "normal" "0xxx"
    else
      execute "normal" "0xx"
    endif
  else
    execute "normal" "0i" . a:comment_mark . " "
  endif
endfunction
" }}}

