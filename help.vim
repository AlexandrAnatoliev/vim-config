" ==================================================================
" File: help.vim
" Description: Display Vim hot keys 
" Author: AlexandAnatoliev
" Version: 0.1.42
" Last Modified: 10.03.2026
" ==================================================================

" ------------------------------------------------------------------  
" Function: ShowHotKeys()
" Description: Function to create popup menu with hot keys 
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function s:ShowHotKeys()
  " Vim hot keys {{{
  let keys = [
        \ '======================HOT=KEYS======================',
        \ '----------------------HELP-MENU---------------------',
        \ '<leader>? - get Help menu',
        \ 'q - close',
        \ 'j - down',
        \ 'k - up',
        \ '------------------------OTHER-----------------------',
        \ '<leader>n - add method after Java class',
        \ '<leader>/ - to comment-out / uncomment line', 
        \ '-----------------WINDOW-MANAGEMENT------------------',
        \ '<leader>e - open /close terminal left',
        \ '<leader>w - open / close todo list on the right side',
        \ '<leader>h - to left', 
        \ '<leader>l - to right', 
        \ '<leader>j - down',
        \ '<leader>k - up',
        \ '<leader>o - close other windows',  
        \ '------------------BUFFER-AND-MODE-------------------',
        \ '<leader><Tab> - buffer navigation mappings', 
        \ '<leader><Esc> - terminal to normal mode',
        \ '------------------TEXT-OPERATIONS-------------------',
        \ '<leader>u - word to upper / lower case',
        \ '<leader>" - wrap / unwrap word in "quotes"', 
        \ '<leader>'' - wrap / unwrap word in ''quotes''',
        \ '<leader>" - wrap / unwrap "visually selected text"',
        \ '<leader>'' - wrap / unwrap ''visually selected text''', 
        \ '<leader>f - file autoformat',
        \ '-------------------CONFIGURATION--------------------',
        \ '<leader>ev - open vimrc file',
        \ '<leader>sv - source change vimrc',
        \ '---------------------NAVIGATION---------------------',
        \ 'H - move to the beginning of the current line',
        \ 'L - move to the end of the current line',
        \ '---------------QUICKFIX_TOGGLE-PLUGIN---------------',
        \ '<leader>q - open / close quickfix window', 
        \ '------------------TODO-VIM-PLUGIN-------------------',
        \ '<leader>t - add TODO comments', 
        \ ']t - moving between TODO comments',
        \ '[t - moving between TODO comments',
        \ '------------HIGHLIGHT-TRAILING-WHITESPACE-----------', 
        \ '<leader>s - highlight trailing whitespace', 
        \ '<leader>S - clear the highlight',
        \ '----------------GREP-OPERATOR-PLUGIN----------------', 
        \ '<leader>g - to search word in project recursively', 
        \ ']g - moving between matches',
        \ '[g - moving between matches',
        \ '-----------------JSHELL-WORD-PLUGIN-----------------', 
        \ '<leader>js - to search word in jshell', 
        \ '--------------------BOILERPLATES--------------------',
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
        \ filter: function('<SID>PopupFilter'),
        \ })
  " }}}
endfunction

" Moving in popup menu {{{
" ------------------------------------------------------------------  
" Function: PopupFilter()
" Description: Function for moving in popup menu 
" Parameters: winid - popup menu, key - user input
" Returns: None
" ------------------------------------------------------------------  
function s:PopupFilter(winid, key)
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
nnoremap <leader>? :call <SID>ShowHotKeys()<cr>
" }}}
