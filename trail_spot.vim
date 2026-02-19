" ==================================================================
" File: trail_spot.vim
" Description: Highlight trailing whitespace as error
" Author: AlexandAnatoliev
" Version: 0.1.28
" Last Modified: 19.02.2026
" ==================================================================

" highlight trailing whitespace as error {{{
nnoremap <leader>s :match Error /\v\s+$/<cr>
" }}}

" clear the highlight {{{
nnoremap <leader>S :match None<cr>
" }}}

