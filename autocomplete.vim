" ==================================================================
" File: autocomplete.vim
" Description: Simple Vim autocomplete with hint 
" Author: AlexandAnatoliev
" Version: 0.1.53 
" Last Modified: 22.03.2026
" ==================================================================

" autocomplete if typing {{{
for char in range(char2nr('a'), char2nr('z'))
  execute "inoremap " . nr2char(char) . " " . nr2char(char) . "\<C-n>\<C-p>"
endfor

for char in range(char2nr('A'), char2nr('Z'))
  execute "inoremap " . nr2char(char) . " " . nr2char(char) . "\<C-n>\<C-p>"
endfor
" }}}

set dictionary=~/.vim/.semverdict

augroup Autocomplete
  autocmd!

  " set dictionaries and brackets autocomplete {{{
  autocmd FileType java setlocal dictionary+=~/.vim/.javadict
  autocmd FileType vim setlocal dictionary+=~/.vim/.vimscriptdict
  autocmd FileType sh setlocal dictionary+=~/.vim/.bashdict
  autocmd FileType md setlocal dictionary+=~/.vim/.markdowndict
  autocmd FileType html setlocal dictionary+=~/.vim/.htmldict
  autocmd FileType css setlocal dictionary+=~/.vim/.cssdict
  autocmd FileType jsp setlocal dictionary+=~/.vim/.jspdict
  autocmd FileType jsp setlocal dictionary+=~/.vim/.htmldict
  autocmd FileType sql setlocal dictionary+=~/.vim/.postgresqldict
  autocmd FileType php setlocal dictionary+=~/.vim/.phpdict
  " }}}

  " brackets autocomplete {{{
  autocmd FileType java iabbrev <buffer> { {<cr>}<esc>
  " }}}
augroup END

set complete+=k,t
