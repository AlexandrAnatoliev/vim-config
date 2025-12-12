" ==================================================================
" File: maps.vim
" Description: Vim mappings 
" Autor: AlexandAnatoliev
" Version: 0.1.14
" Last Modified: 12.12.2025
" ==================================================================

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

" ------------------------------------------------------------------  

" В качестве leader - пробел
let mapleader=" "

" ------------------------------------------------------------------  
" Window management:
" ------------------------------------------------------------------  

" open a todo list on the right side
noremap <leader>w :call VimOpenTodo()<CR>

" open terminal below
nnoremap <leader>e :belowright terminal<CR><C-\><C-n>:resize 10<CR>

" window navigation mappings
noremap <leader>h :wincmd h<CR>
noremap <leader>l :wincmd l<CR>
noremap <leader>j :wincmd j<CR>
noremap <leader>k :wincmd k<CR>

"close other windows
noremap <leader>o :wincmd o<CR> 

" ------------------------------------------------------------------  
" Buffer and Mode:
" ------------------------------------------------------------------  

" terminal to normal mode 
tnoremap <leader><Esc> <C-\><C-n>

" buffer navigation mappings
noremap <leader><Tab> :bnext<CR> 

" ------------------------------------------------------------------  
" Text Operations:
" ------------------------------------------------------------------  

" comments
map <leader>/ 0i// <esc>0 

" word to upper case
inoremap <leader>u <esc>viwU<esc>ea
nnoremap <leader>u viwU<esc>

" wrap word by "quotes" 
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" wrap word by 'quotes' 
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" wrap visually selected text by "quotes" 
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>lel
" wrap visually selected text by 'quotes' 
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>lel

" file autoformat 
nnoremap <leader>f :normal gg=G<CR>

" ------------------------------------------------------------------  
" Configuration:
" ------------------------------------------------------------------  

" open vimrc file 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source change vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" ------------------------------------------------------------------  
" Navigation:
" ------------------------------------------------------------------  

" move to the begin current line
nnoremap H 0
" move to the end current line
nnoremap L $
