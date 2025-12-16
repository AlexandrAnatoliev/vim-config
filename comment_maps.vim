" ============================================================================
" File: comment_maps.vim
" Description: Vim mappings to comments code lines in various languages 
" Author: AlexandAnatoliev
" Version: 0.1.15
" Last Modified: 16.12.2025
" ============================================================================

" line comments
augroup CommentMappings
    autocmd!
    autocmd FileType vim nnoremap <buffer> <leader>/ I" <esc>
    autocmd FileType sh nnoremap <buffer> <leader>/ I# <esc>
    autocmd FileType sql nnoremap <buffer> <leader>/ I-- <esc>
    autocmd FileType java nnoremap <buffer> <leader>/ I// <esc>
augroup END

