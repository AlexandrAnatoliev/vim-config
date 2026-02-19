" ==================================================================
" File: help.vim
" Description: Display Vim hot keys 
" Author: AlexandAnatoliev
" Version: 0.1.30
" Last Modified: 19.02.2026
" ==================================================================

" ------------------------------------------------------------------  
" Function: ShowHotKeys()
" Description: Function to create popup menu with hot keys 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function ShowHotKeys()
  " Vim hot keys {{{
  let keys = [
        \ '======================Hot=keys======================',
        \ '<leader>? - get Help menu',
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
  let winid = popup_create(keys, #{
        \ title: 'Help',
        \ pos: 'center',
        \ minwidth: 50,
        \ maxheight: 20,
        \ highlight: 'WarningMsg',
        \ border: [],
        \ close: 'click',
        \ time: 10000,
        \ mapping: 0,
        \ filter: function('PopupFilter'),
        \ })
  " }}}
endfunction

" ------------------------------------------------------------------  
" Function: PopupFilter()
" Description: Function for moving in popup menu 
" Parameters: winid - popup menu, key - user input
" Returns: None
" ------------------------------------------------------------------  
" Moving in popup menu {{{
function PopupFilter(winid, key)
  if a:key == 'j' || a:key == '<Down>'
    call win_execute(a:winid, "normal! \<C-e>")
    return 1
  elseif a:key == 'k' || a:key == 'Up'
    call win_execute(a:winid, "normal! \<C-y>")
    return 1
  elseif a:key == 'q' || a:key == '<Esc>'
    call popup_close(a:winid)
    return 1
  endif
  return 0
endfunction
" }}}

" Help mapping {{{
nnoremap <leader>? :call ShowHotKeys()<cr>
" }}}
