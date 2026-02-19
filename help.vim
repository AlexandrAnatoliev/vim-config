" ==================================================================
" File: help.vim
" Description: Display Vim hot keys 
" Author: AlexandAnatoliev
" Version: 0.1.30
" Last Modified: 19.02.2026
" ==================================================================

" Display Vim hot keys {{{
nnoremap <leader>? :call popup_create(['Hot heys'], #{
      \ title: 'Title',
      \ pos: 'center',
      \ line: 10,
      \ col: 20,
      \ highlight: 'WarningMsg',
      \ border: [],
      \ close: 'click',
      \ time: 5000 })<cr> 
" }}} 
