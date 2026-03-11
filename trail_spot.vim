" ==================================================================
" File: trail_spot.vim
" Description: Highlight trailing whitespace as error
" Author: AlexandAnatoliev
" Version: 0.1.44
" Last Modified: 11.03.2026 
" ==================================================================

let g:trailing_whitespace_is_done=0

" ToTrailingWhitespace function {{{
" ------------------------------------------------------------------  
" Function: ToTrailingWhitespace()
" Description: Function to highlight trailing whitespace as error 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:ToTrailingWhitespace()
  if g:trailing_whitespace_is_done
    execute ":match None"
    let g:trailing_whitespace_is_done=0
  else
    execute ":match Error /\\v\\s+$/"
    let g:trailing_whitespace_is_done=1
  endif
endfunction
" }}}

" highlight trailing whitespace as error / clear the highlight{{{
nnoremap <leader>s :call <SID>ToTrailingWhitespace()<CR>
" }}}

