" ==================================================================
" File: quickfix_toggle.vim
" Description: Open / close quickfix window plugin
" Author: AlexandAnatoliev
" Version: 0.1.40
" Last Modified: 05.03.2026
" ==================================================================

" QuickfixToggle mapping {{{
nnoremap <leader>q :call <SID>QuickfixToggle()<cr>
" }}}

let g:quickfix_is_open=0

" QuickfixToggle function {{{
" ------------------------------------------------------------------  
" Function: QuickfixToggle()
" Description: Function to open / close quickfix window  
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:QuickfixToggle()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open=0
    execute g:quickfix_return_to_window . "wincmd w"
  else
    let g:quickfix_return_to_window = winnr()
    copen
    let g:quickfix_is_open=1
  endif
endfunction
" }}}

