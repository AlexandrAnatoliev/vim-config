" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Autor: AlexandAnatoliev
" Version: 0.1.13
" Last Modified: 11.12.2025
" ==================================================================

" В качестве leader - пробел
let mapleader=" "

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
noremap <leader>h :wincmd h<CR>
noremap <leader>l :wincmd l<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>

"close other windows
noremap <leader>o :wincmd o<CR> 

" terminal to normal mode 
tnoremap <leader><Esc> <C-\><C-n>

" buffer navigation mappings
noremap <leader><Tab> :bnext<CR> 

" comments
map <leader>/ 0i// <esc>0 

" word to upper case
inoremap <leader>u <esc>viwU<esc>ea
nnoremap <leader>u viwU<esc>

" open vimrc file and source change vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" wrap word by "quotes" 
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" wrap word by 'quotes' 
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" wrap visually selected text by "quotes" 
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>lel
" wrap visually selected text by 'quotes' 
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>lel

" move to the begin current line
nnoremap H 0
" move to the end current line
nnoremap L $

" open terminal below
nnoremap <leader>e :belowright terminal<CR><C-\><C-n>:resize 10<CR>
