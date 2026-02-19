" ==================================================================
" File: todo.vim
" Description: TODO Vim plugin
" Author: AlexandAnatoliev
" Version: 0.1.29
" Last Modified: 19.02.2026
" ==================================================================

" Add TODO comments {{{
augroup TODOMaps
  autocmd!
  autocmd FileType vim nnoremap <buffer> <leader>t I" TODO 
  autocmd FileType sh nnoremap <buffer> <leader>t I# TODO 
  autocmd FileType markdown nnoremap <buffer> <leader>t I<!-- TODO --><esc>bi
  autocmd FileType html nnoremap <buffer> <leader>t I<!-- TODO --><esc>bi
  autocmd FileType jsp nnoremap <buffer> <leader>t I<%-- TODO --%><esc>bi
  autocmd FileType sql nnoremap <buffer> <leader>t I-- TODO 
  autocmd FileType java nnoremap <buffer> <leader>t I// TODO 
augroup END
" }}} 

" Moving between TODO comments {{{
nnoremap ]t /TODO<cr> 
nnoremap [t ?TODO<cr>n 
" }}} 
