" ==================================================================
" File: grep_word.vim
" Description: Simple Vim grep plugin 
" Author: AlexandAnatoliev
" Version: 0.1.33
" Last Modified: 21.02.2026
" ==================================================================

" search word in project recursively {{{
nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) 
      \. " ."<cr>:copen<cr>
" }}}

" Moving between searched {{{
nnoremap ]g :cnext<cr> 
nnoremap [g :cprevious<cr> 
" }}} 
