" ==================================================================
" File: todo.vim
" Description: TODO Vim plugin
" Author: AlexandAnatoliev
" Version: 0.1.42
" Last Modified: 09.09.2026
" ==================================================================
" TODO todo function - создать тоду комментарий не в этой строке, 
" TODO а создавать новую снизу (т), сверху (Т)
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
