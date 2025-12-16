" ==================================================================
" File: autocomplete.vim
" Description: Simple Vim autocomplete with hint 
" Author: AlexandAnatoliev
" Version: 0.1.15
" Last Modified: 16.12.2025
" ==================================================================

" autocomplete if typing
for char in range(char2nr('a'), char2nr('z'))
    execute "inoremap " . nr2char(char) . " " . nr2char(char) . "\<C-n>\<C-p>"
endfor

for char in range(char2nr('A'), char2nr('Z'))
    execute "inoremap " . nr2char(char) . " " . nr2char(char) . "\<C-n>\<C-p>"
endfor

" autocomplete class methods
inoremap <leader>n <c-r>=AddMethodToClass()<CR>

" ------------------------------------------------------------------  
" Function: AddMethodToClass()
" Description: Function to add  methods after java classes 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! AddMethodToClass()
    let line_text = getline('.')[0:col('.')-2]
    let last_word = matchstr(line_text, '\v\S+$')

    if empty(last_word)
        return '.'
    else
        return '.' . last_word . "\<C-n>\<C-p>"
    endif
endfunction

" set dictionaries 
set dictionary=~/.vim/.semverdict
autocmd FileType java setlocal dictionary+=~/.vim/.javadict
autocmd FileType vim setlocal dictionary+=~/.vim/.vimscriptdict
autocmd FileType sh setlocal dictionary+=~/.vim/.bashdict
autocmd FileType md setlocal dictionary+=~/.vim/.markdowndict
autocmd FileType html setlocal dictionary+=~/.vim/.htmldict
autocmd FileType css setlocal dictionary+=~/.vim/.cssdict
autocmd FileType jsp setlocal dictionary+=~/.vim/.jspdict
autocmd FileType jsp setlocal dictionary+=~/.vim/.htmldict
autocmd FileType sql setlocal dictionary+=~/.vim/.postgresqldict

set thesaurus=~/.vim/.thesaurus

set complete+=k,s

" brackets autocomplete 
autocmd FileType java :iabbrev <buffer> { {<cr>}<esc>O
