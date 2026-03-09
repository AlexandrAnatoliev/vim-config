" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Author: AlexandAnatoliev
" Version: 0.1.42
" Last Modified: 09.03.2026
" ==================================================================

" В качестве leader - пробел {{{
let mapleader=" "
" }}}

let g:todo_list_is_open=0

" VimOpenTodoList function {{{
" ------------------------------------------------------------------  
" Function: VimOpenTodoList()
" Description: Function to open a todo list on the right side 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:VimOpenTodoList()
  if g:todo_list_is_open
    execute g:todo_list_return_to_window . "wincmd w" 
    execute "q"
    let g:todo_list_is_open=0
  else
    rightbelow vertical split
    e ~/.vim/.todo
    let g:todo_list_return_to_window = winnr()
    let g:todo_list_is_open=1
  endif
endfunction
" }}}

let g:terminal_is_open=0

" OpenTerminal function {{{
" ------------------------------------------------------------------  
" Function: OpenTerminal()
" Description: Function to open / close a terminal on the left side 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:OpenTerminal()
  if g:terminal_is_open
    execute g:terminal_return_to_window . "wincmd w"
    execute "q!"
    let g:terminal_is_open=0
  else
    leftabove vertical terminal
    call term_sendkeys(bufnr('%'), "ls\r")
    call term_sendkeys(bufnr('%'), "git status\r")
    let g:terminal_return_to_window = winnr()
    let g:terminal_is_open=1
  endif
endfunction
" }}}

" ToUpperCase function {{{
" ------------------------------------------------------------------  
" Function: ToUpperCase()
" Description: Function to change word case   
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! s:ToUpperCase()
  let myChar = getline('.')[col('.')-1]
  if myChar =~ '[A-Z]' 
    execute "normal" "viwu"
  else
    execute "normal" "viwU"
  endif
endfunction
" }}}

" ------------------------------------------------------------------  
" Window management:
" ------------------------------------------------------------------  

" open a todo list on the right side {{{
noremap <leader>w :call <SID>VimOpenTodoList()<CR>
" }}}

" open /close terminal left {{{
tnoremap <leader>e <C-\><C-n> :call <SID>OpenTerminal()<CR>
noremap <leader>e :call <SID>OpenTerminal()<CR>
" }}}

" window navigation mappings {{{
noremap <leader>h :wincmd h<CR>
noremap <leader>l :wincmd l<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>
" }}}

"close other windows {{{
noremap <leader>o :wincmd o<CR> 
" }}}

" ------------------------------------------------------------------  
" Buffer and Mode:
" ------------------------------------------------------------------  

" terminal to normal mode {{{
tnoremap <leader><Esc> <C-\><C-n>
" }}}

" buffer navigation mappings {{{
noremap <leader><Tab> :bnext<CR> 
" }}}

" ------------------------------------------------------------------  
" Text Operations:
" ------------------------------------------------------------------  
" word to upper / lower case {{{
nnoremap <leader>u ma :call <SID>ToUpperCase()<CR>`a
" }}}
" TODO add toggle
" TODO add возвращение в исходную точку
" TODO docs
" wrap word by "quotes" {{{
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" }}}
" wrap word by 'quotes' {{{
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" }}}
" wrap visually selected text by "quotes" {{{
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>lel
" }}}
" wrap visually selected text by 'quotes' {{{
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>lel
" }}}
" file autoformat {{{
augroup Autoformat
  autocmd!
  autocmd FileType *
        \ if index(['markdown'], &ft) == -1 |
        \ nnoremap <buffer> <leader>f :normal! gg=G<cr> |
        \ endif
augroup END
" }}}

" ------------------------------------------------------------------  
" Configuration:
" ------------------------------------------------------------------  

" open vimrc file {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" }}}
" source change vimrc {{{
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" ------------------------------------------------------------------  
" Navigation:
" ------------------------------------------------------------------  

" move to the begin current line {{{
nnoremap H 0
" }}}
" move to the end current line {{{
nnoremap L $
" }}}
