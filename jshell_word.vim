" ==================================================================
" File: jshell_word.vim
" Description: Search word in jshell 
" Author: AlexandAnatoliev
" Version: 0.1.37
" Last Modified: 22.02.2026
" ==================================================================

" SendWordToJshell function {{{
" ------------------------------------------------------------------  
" Function: SendWordToJshell()
" Description: Function to send word in jshell and get hints 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! SendWordToJshell(type)
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

endfunction
" }}}

" SendWordToJshell mapping {{{
nnoremap <leader>js :set operatorfunc=SendWordToJshell<cr>g@
vnoremap <leader>js :<c-u>call SendWordToJshell(visualmode())<cr>
" }}}
