" ==================================================================
" File: trail_spot.vim
" Description: Highlight trailing whitespace as error
" Author: AlexandAnatoliev
" Version: 0.1.26
" Last Modified: 18.02.2026
" ==================================================================

" highlight trailing whitespace as error {{{
nnoremap <leader>t :match Error /\v\s+$/<cr>
" }}}

" clear the highlight {{{
nnoremap <leader>T :match None<cr>
" }}}

