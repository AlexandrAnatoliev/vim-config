" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Autor: AlexandAnatoliev
" Version: 0.1.10
" Last Modified: 9.12.2025
" ==================================================================

" В качестве leader - пробел
let mapleader=" "

" ------------------------------------------------------------------  
" Function: VimOpenTerminal()
" Description: Function to open a terminal on the left side and
" set its width to 45 columns
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! VimOpenTerminal()
  vertical terminal
  vertical resize 45
  call feedkeys("pwd\<CR>")
  call feedkeys("ls --level=6\<CR>")
  " call feedkeys("jshell -v\<CR>")
endfunction

noremap <leader>e :call VimOpenTerminal()<CR>

" ------------------------------------------------------------------  
" Function: VimOpenTodo()
" Description: Function to open a todo list on the right side and
" set its width to 45 columns
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! VimOpenTodo()
  rightbelow vertical split
  vertical resize 45
  e ~/.vim/.todo
endfunction

noremap <leader>w :call VimOpenTodo()<CR>

" window navigation mappings
noremap <leader>h :wincmd h<CR><Esc> 
noremap <leader>l :wincmd l<CR><Esc>
noremap <leader>j :wincmd j<CR><Esc>   
noremap <leader>k :wincmd k<CR><Esc> 

"close other windows
noremap <leader>o :wincmd o<CR> 

" terminal to normal mode 
tnoremap <leader><Esc> <C-\><C-n>

" buffer navigation mappings
noremap <leader><Tab> :bNext<CR> 

" comments
map <leader>/ 0i// 0 

" word to upper case
inoremap <leader>u <esc>viwU<esc>i
nnoremap <leader>u viwU<esc>
