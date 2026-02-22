" ==================================================================
" File: grep-operator.vim
" Description: Simple Vim grep plugin 
" Author: AlexandAnatoliev
" Version: 0.1.38
" Last Modified: 22.02.2026
" ==================================================================

" GrepOperator function {{{
" ------------------------------------------------------------------  
" Function: GrepOperator()
" Description: Function to search word in project recursively  
" Parameters: visual mode
" Returns: None
" ------------------------------------------------------------------  
function! s:GrepOperator(type)
  let saved_unnamed_register =@@
  let current_colorscheme = exists('g:colors_name') ? g:colors_name : 'default'

  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif

  silent execute "grep! -R " . shellescape(@@) . " ."
  copen

  let @@ = saved_unnamed_register
  execute "colorscheme " . current_colorscheme
endfunction
" }}}

" GrepOperator mapping {{{
nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>
" }}}

" Moving between matches {{{
nnoremap ]g :cnext<cr> 
nnoremap [g :cprevious<cr> 
" }}} 
