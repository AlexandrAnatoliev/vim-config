" ==================================================================
" File: autocomplete.vim
" Description: Simple Vim autocomplete with hint 
" Autor: AlexandAnatoliev
" Version: 0.1.8
" Last Modified: 08.12.2025
" ==================================================================

" autocomplete if typing
for char in range(char2nr('a'), char2nr('z'))
    execute "inoremap " . nr2char(char) . " " . nr2char(char) . "\<C-n>\<C-p>"
endfor

for char in range(char2nr('A'), char2nr('Z'))
    execute "inoremap " . nr2char(char) . " " . nr2char(char) . "\<C-n>\<C-p>"
endfor

" set dictionaries 
set dictionary=~/.vim/.semverdict
autocmd FileType java setlocal dictionary+=~/.vim/.javadict
autocmd FileType vim setlocal dictionary+=~/.vim/.vimscriptdict
autocmd FileType sh setlocal dictionary+=~/.vim/.bashdict
autocmd FileType md setlocal dictionary+=~/.vim/.markdowndict
autocmd FileType html setlocal dictionary+=~/.vim/.htmldict
autocmd FileType css setlocal dictionary+=~/.vim/.cssdict
autocmd FileType jsp setlocal dictionary+=~/.vim/.jspdict, ~/.vim/.htmldict
autocmd FileType sql setlocal dictionary+=~/.vim/.postgresqldict

autocmd FileType java setlocal thesaurus=~/.vim/.thesaurus

set complete+=k,s

