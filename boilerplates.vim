" ==================================================================
" File: boilerplates.vim
" Description: Simple Vim Java boilerplates 
" Author: AlexandAnatoliev
" Version: 0.1.18
" Last Modified: 27.12.2025
" ==================================================================

augroup Boilerplates
    autocmd!
    " System.out.println() {{{
    autocmd FileType java iabbrev <buffer> 
                \sout System.out.println();<esc>F(a
    " }}}
    " System.out.printf() {{{
    autocmd FileType java iabbrev <buffer> 
                \souf System.out.printf();<esc>F(a
    " }}}
    " public static void main(String[] args) {{{
    autocmd FileType java iabbrev <buffer> psvm 
                \ public static void main(String[] args) {<cr>}<esc>O
    " }}}
    " for (int i = 0; i < ; i++) {{{
    autocmd FileType java iabbrev <buffer> 
                \fori for (int i = 0; i < ; i++) {<cr>}<esc>kf<a
    " }}}
augroup END
