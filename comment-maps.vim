" ============================================================================
" File: comment-maps.vim
" Description: Vim mappings to comments code lines in various languages 
" Author: AlexandAnatoliev
" Version: 0.1.14
" Last Modified: 12.12.2025
" ============================================================================

" line comments
augroup CommentMappings
    autocmd!
    autocmd FileType vim nnoremap <buffer> <leader>/ I" <esc>
    autocmd FileType sh nnoremap <buffer> <leader>/ I# <esc>
    autocmd FileType sql nnoremap <buffer> <leader>/ I-- <esc>
    autocmd FileType java nnoremap <buffer> <leader>/ I// <esc>
augroup END

