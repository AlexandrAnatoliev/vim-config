" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Author: AlexandAnatoliev
" Version: 0.1.42
" Last Modified: 08.03.2026
" ==================================================================

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

" В качестве leader - пробел {{{
let mapleader=" "
" }}}

" ------------------------------------------------------------------  
" Window management:
" ------------------------------------------------------------------  

" open a todo list on the right side {{{
noremap <leader>w :call <SID>VimOpenTodoList()<CR>
" }}}

" open terminal below {{{
nnoremap <leader>e :belowright terminal<CR><C-\><C-n>:resize 10<CR>
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

" word to upper case {{{
inoremap <leader>u <esc>viwU<esc>ea
nnoremap <leader>u viwU<esc>
" }}}

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
