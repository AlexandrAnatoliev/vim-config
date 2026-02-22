" ==================================================================
" File: grep-operator.vim
" Description: Simple Vim grep plugin 
" Author: AlexandAnatoliev
" Version: 0.1.36
" Last Modified: 22.02.2026
" ==================================================================

" GrepOperator function {{{
" ------------------------------------------------------------------  
" Function: GrepOperator()
" Description: Function to search word in project recursively  
" Parameters: visual mode
" Returns: None
" ------------------------------------------------------------------  
function! GrepOperator(type)
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif

  let current_colorscheme = exists('g:colors_name') ? g:colors_name : 'default'

  silent execute "grep! -R " . shellescape(@@) . " ."
  copen

  execute "colorscheme " . current_colorscheme
endfunction
" }}}

" GrepOperator mapping {{{
nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>
" }}}

" Moving between matches {{{
nnoremap ]g :cnext<cr> 
nnoremap [g :cprevious<cr> 
" }}} 
