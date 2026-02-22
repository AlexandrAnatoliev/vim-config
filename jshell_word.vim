" ==================================================================
" File: jshell_word.vim
" Description: Search word in jshell 
" Author: AlexandAnatoliev
" Version: 0.1.39
" Last Modified: 22.02.2026
" ==================================================================

" SendWordToJshell function {{{
" ------------------------------------------------------------------  
" Function: SendWordToJshell()
" Description: Function to send word in jshell and get hints 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:SendWordToJshell(type)
  let saved_unnamed_register =@@

  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif

  terminal jshell
  sleep 100m
  startinsert
  call feedkeys(@@ . "\<Tab>", 't')

  let @@ = saved_unnamed_register
endfunction
" }}}

" SendWordToJshell mapping {{{
nnoremap <leader>js :set operatorfunc=<SID>SendWordToJshell<cr>g@
vnoremap <leader>js :<c-u>call <SID>SendWordToJshell(visualmode())<cr>
" }}}
