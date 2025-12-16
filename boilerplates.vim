" ==================================================================
" File: boilerplates.vim
" Description: Simple Vim Java boilerplates 
" Autor: AlexandAnatoliev
" Version: 0.1.16
" Last Modified: 16.12.2025
" ==================================================================

augroup Boilerplates
    autocmd!
    autocmd FileType java :iabbrev <buffer> 
                \sout System.out.println();<esc>F(a
    autocmd FileType java :iabbrev <buffer> 
                \souf System.out.printf();<esc>F(a
    autocmd FileType java :iabbrev <buffer> psvm 
                \ public static void main(String[] args) {<cr>}<esc>O
    autocmd FileType java :iabbrev <buffer> 
                \fori for (int i = 0; i < ; i++) {<cr>}<esc>kf<a
augroup END
