" ==================================================================
" File: todo.vim
" Description: TODO Vim plugin
" Author: AlexandAnatoliev
" Version: 0.1.53
" Last Modified: 22.03.2026
" ==================================================================
" Add TODO comments {{{
augroup TODOMaps
  autocmd!
  autocmd FileType vim nnoremap <buffer> <leader>t o" TODO 
  autocmd FileType vim nnoremap <buffer> <leader>T O" TODO 
  autocmd FileType sh nnoremap <buffer> <leader>t o# TODO 
  autocmd FileType sh nnoremap <buffer> <leader>T O# TODO 
  autocmd FileType markdown nnoremap <buffer> <leader>t o<!-- TODO --><esc>bi
  autocmd FileType markdown nnoremap <buffer> <leader>T O<!-- TODO --><esc>bi
  autocmd FileType html nnoremap <buffer> <leader>t o<!-- TODO --><esc>bi
  autocmd FileType html nnoremap <buffer> <leader>T O<!-- TODO --><esc>bi
  autocmd FileType jsp nnoremap <buffer> <leader>t o<%-- TODO --%><esc>bi
  autocmd FileType jsp nnoremap <buffer> <leader>T O<%-- TODO --%><esc>bi
  autocmd FileType sql nnoremap <buffer> <leader>t o-- TODO 
  autocmd FileType sql nnoremap <buffer> <leader>T O-- TODO 
  autocmd FileType java nnoremap <buffer> <leader>t o// TODO 
  autocmd FileType java nnoremap <buffer> <leader>T O// TODO 
  autocmd FileType php nnoremap <buffer> <leader>t o// TODO 
  autocmd FileType php nnoremap <buffer> <leader>T O// TODO 
augroup END
" }}} 

" Moving between TODO comments {{{
nnoremap ]t /TODO<cr> 
nnoremap [t ?TODO<cr>n 
" }}} 
