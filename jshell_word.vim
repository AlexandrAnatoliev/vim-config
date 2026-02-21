" ==================================================================
" File: jshell_word.vim
" Description: Search word in jshell 
" Author: AlexandAnatoliev
" Version: 0.1.32
" Last Modified: 21.02.2026
" ==================================================================

" SendWordToJshell function {{{
" ------------------------------------------------------------------  
" Function: SendWordToJshell()
" Description: Function to send word in jshell and get hints 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! SendWordToJshell()
  let word = expand("<cword>")
  terminal jshell
  sleep 100m
  startinsert
  call feedkeys(word . "\<Tab>", 't')
endfunction
" }}}

" SendWordToJshell mapping {{{
nnoremap <leader>js :call SendWordToJshell()<CR>
" }}}
