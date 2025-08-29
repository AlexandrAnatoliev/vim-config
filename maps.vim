" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Autor: AlexandAnatoliev
" Version: 0.1.0
" Last Modified: 29.08.2025
" ==================================================================

" В качестве leader - пробел
let mapleader=" "

" ------------------------------------------------------------------  
" Function: VimOpenTerminal()
" Description: Function to open a terminal on the left side and
" set its width to 70 columns
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function! VimOpenTerminal()
  vertical terminal
  vertical resize 70
endfunction

map <leader>t :call VimOpenTerminal()<CR>

" window navigation mappings
map <leader>h :wincmd h<CR> 
map <leader>l :wincmd l<CR> 
map <leader>j :wincmd j<CR> 
map <leader>k :wincmd k<CR> 

"close other windows
map <leader>o :wincmd o<CR> 

" terminal to normal mode 
tnoremap <leader><Esc> <C-\><C-n>
