" ============================================================================
" File: screen-type.vim
" Description: Get and set screen type functions 
" Author: AlexandAnatoliev
" Version: 0.1.47
" Last Modified: 11.03.2026
" ============================================================================

" ----------------------------------------------------------------------------  
" GetScreenType function {{{
" ----------------------------------------------------------------------------  
" Function: GetScreenType()
" Description: Function to get screen type from setting file  
" Parameters: None
" Returns: Screen type
" ----------------------------------------------------------------------------  
function! GetScreenType()
  return readfile(expand('~/.vim/.screen-type'))
endfunction
" }}}

" ----------------------------------------------------------------------------  
" SetScreenType function {{{
" ----------------------------------------------------------------------------  
" Function: SetScreenType(type)
" Description: Function to set screen type to setting file  
" Parameters: Type screen
" Returns: None
" ----------------------------------------------------------------------------  
function! SetScreenType(type)
  execute ":! echo " . a:type . expand("> ~/.vim/.screen-type")
endfunction
" }}}
