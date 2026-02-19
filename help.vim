" ==================================================================
" File: help.vim
" Description: Display Vim hot keys 
" Author: AlexandAnatoliev
" Version: 0.1.30
" Last Modified: 19.02.2026
" ==================================================================


function ShowHotKeys()
  " Vim hot keys {{{
  let keys = [
        \ '======================Hot=keys======================',
        \ '<leader>n - add method after Java class',
        \ '<leader>/ - to comment a line', 
        \ '-----------------Window-management------------------',
        \ '<leader>e - open a terminal below',
        \ '<leader>w - open a todo list on the right side',
        \ '<leader>h - to left', 
        \ '<leader>l - to right', 
        \ '<leader>j - down',
        \ '<leader>k - up',
        \ '<leader>o - close other windows',  
        \ '------------------Buffer-and-Mode-------------------',
        \ '<leader><Tab> - buffer navigation mappings', 
        \ '<leader><Esc> - terminal to normal mode',
        \ '------------------Text-Operations-------------------',
        \ '<leader>u - word to upper case',
        \ '<leader>" - wrap word in \"quotes\"', 
        \ '<leader>'' - wrap word in ''quotes''',
        \ '<leader>" - wrap visually selected text by "quotes"',
        \ '<leader>'' - wrap visually selected text by ''quotes''',
        \ '<leader>f - file autoformat',
        \ '-------------------Configuration--------------------',
        \ '<leader>ev - open vimrc file',
        \ '<leader>sv - source change vimrc',
        \ '---------------------Navigation---------------------',
        \ 'H - move to the beginning of the current line',
        \ 'L - move to the end of the current line',
        \ '------------------TODO-Vim-plugin-------------------',
        \ '<leader>t - add TODO comments', 
        \ ']t - moving between TODO comments',
        \ '[t - moving between TODO comments',
        \ '------------Highlight-trailing-whitespace-----------', 
        \ '<leader>s - highlight trailing whitespace', 
        \ '<leader>S - clear the highlight',
        \ '--------------------Boilerplates--------------------',
        \ 'sout - System.out.println();',
        \ 'souf - System.out.printf();',
        \ 'psvm - public static void main(String[] args) { }',
        \ 'fori - for (int i = 0; i < ; i++) { }',
        \ ]
  " }}} 
  " Popup settings {{{
  call popup_create(keys, #{
        \ title: 'Help',
        \ pos: 'center',
        \ line: 10,
        \ col: 20,
        \ highlight: 'WarningMsg',
        \ border: [],
        \ close: 'click',
        \ time: 10000 
        \ })
  " }}}
endfunction

" Help mapping {{{
nnoremap <leader>? :call ShowHotKeys()<cr>
" }}}
