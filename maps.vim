" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Autor: AlexandAnatoliev
" Version: 0.1.1
" Last Modified: 22.11.2025
" ==================================================================

" В качестве leader - пробел
let mapleader=" "

" ------------------------------------------------------------------  
" Function: VimOpenTerminal()
" Description: Function to open a terminal on the left side and
" set its width to 50 columns
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! VimOpenTerminal()
  vertical terminal
  vertical resize 50
  call feedkeys("ls --level=6\<CR>")
  " call feedkeys("jshell -v\<CR>")
endfunction

map <leader>e :call VimOpenTerminal()<CR>

" ------------------------------------------------------------------  
" Function: VimOpenTodo()
" Description: Function to open a todo list on the right side and
" set its width to 50 columns
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! VimOpenTodo()
  rightbelow vertical split
  vertical resize 50
  e ~/.vim/.todo
endfunction

map <leader>w :call VimOpenTodo()<CR>

" window navigation mappings
map <leader>h :wincmd h<CR><Esc> 
map <leader>l :wincmd l<CR><Esc>
map <leader>j :wincmd j<CR><Esc>   
map <leader>k :wincmd k<CR><Esc> 

"close other windows
map <leader>o :wincmd o<CR> 

" terminal to normal mode 
tnoremap <leader><Esc> <C-\><C-n>

" buffer navigation mappings
map <leader><Tab> :bNext<CR> 

" comments
map <leader>/ 0i// 0 
