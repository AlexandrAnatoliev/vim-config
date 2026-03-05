" ==================================================================
" File: quickfix_toggle.vim
" Description: Open / close quickfix window plugin
" Author: AlexandAnatoliev
" Version: 0.1.40
" Last Modified: 05.03.2026
" ==================================================================

nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open=0

function! QuickfixToggle()
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

