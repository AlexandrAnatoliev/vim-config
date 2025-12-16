" ==================================================================
" File: boilerplates.vim
" Description: Simple Vim Java boilerplates 
" Autor: AlexandAnatoliev
" Version: 0.1.15
" Last Modified: 16.12.2025
" ==================================================================
autocmd FileType java :iabbrev <buffer> sout System.out.println();
autocmd FileType java :iabbrev <buffer> souf System.out.printf();
autocmd FileType java :iabbrev <buffer> psvm 
            \ public static void main(String[] args) {<cr>}
autocmd FileType java :iabbrev <buffer> fori for (int i = 0; i < ; i++) {<cr>}
