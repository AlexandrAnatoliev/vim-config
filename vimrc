" =============================================================================
" File: vimrc
" Description: my Vim configuration
" Author: AlexandAnatoliev
" Version: 0.1.53
" Last Modified: 22.03.2026
" =============================================================================

" =======================BASIC SETTINGS========================================
" Line numbering {{{
set number
" }}}

" Encoding settings {{{
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
" }}}

" =======================INDENTATION SETTINGS==================================

" Basic tab settings {{{
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
" }}}

" Automatic indentation based on file type {{{
filetype indent on
" }}}

" Filetype-specific tab settings {{{
augroup TabSettings
  autocmd!
  autocmd FileType java setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END
" }}}

" =======================WINDOW SETTINGS=======================================

" Window size {{{
" set winwidth=100
" set winminwidth=45
" }}}

" Status line {{{
set laststatus=2
" }}}

" =======================SCROLL SETTINGS=======================================

" Line wrapping and scrolling {{{
set nowrap
set sidescroll=8
set sidescrolloff=8
set scrolloff=8
" }}}

" =======================SEARCH SETTINGS=======================================

" Search behavior {{{
set incsearch
set hlsearch
set showmatch
" }}}

" =======================FOLDING SETTINGS======================================

" Code folding {{{
set foldmethod=indent
set foldlevel=0
" }}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0
augroup END
" }}}

" =======================SPELL CHECK AND SYNTAX================================

" Set checking and syntax highlighting {{{
set spell spelllang=ru,en
syntax on
" }}}

" =======================JAVA SETTINGS=========================================

" Java-specific highlighting {{{
let java_highlight_all = 1
let java_highlight_debug = 1
let java_ignore_javadoc = 0
let java_mark_braces_in_parens_as_errors = 1
" }}}

" =======================FILE INCLUSION========================================

" Load key mappings {{{
if filereadable(expand("~/.vim/maps.vim"))
  source ~/.vim/maps.vim
endif
" }}}

" Load color scheme settings {{{
" if filereadable(expand("~/.vim/colorscheme.vim"))
"   source ~/.vim/colorscheme.vim
" endif
" }}}

" Load autocomplete setting {{{
if filereadable(expand("~/.vim/autocomplete.vim"))
  source ~/.vim/autocomplete.vim
endif
" }}}

" Load boilerplates setting {{{
if filereadable(expand("~/.vim/boilerplates.vim"))
  source ~/.vim/boilerplates.vim
endif
" }}}

" Load line comment mappings {{{
if filereadable(expand("~/.vim/comment_maps.vim"))
  source ~/.vim/comment_maps.vim
endif
" }}}

" Load html tags autocomplete {{{
if filereadable(expand("~/.vim/html_tags.vim"))
  source ~/.vim/html_tags.vim
endif
" }}}

" Load statusline settings {{{
if filereadable(expand("~/.vim/statusline.vim"))
  source ~/.vim/statusline.vim
endif
" }}}

" Load and set highlight trailing whitespace as error {{{
" if filereadable(expand("~/.vim/trail_spot.vim"))
"   source ~/.vim/trail_spot.vim
" endif
" }}}

" Load TODO Vim plugin {{{
if filereadable(expand("~/.vim/todo.vim"))
  source ~/.vim/todo.vim
endif
" }}}

" Load Display Vim hot keys {{{
if filereadable(expand("~/.vim/help.vim"))
  source ~/.vim/help.vim
endif
" }}}

" Load Search word in jshell plugin {{{
" if filereadable(expand("~/.vim/jshell_word.vim"))
"   source ~/.vim/jshell_word.vim
" endif
" }}}

" Load Simple Vim grep plugin {{{
if filereadable(expand("~/.vim/grep-operator.vim"))
  source ~/.vim/grep-operator.vim
endif
" }}}

" Load Open / close quickfix window plugin {{{
if filereadable(expand("~/.vim/quickfix_toggle.vim"))
  source ~/.vim/quickfix_toggle.vim
endif
" }}}

" Load get and set screen type functions {{{
if filereadable(expand("~/.vim/screen-type.vim"))
  source ~/.vim/screen-type.vim
endif

"" Load file tree plugin {{{
" if filereadable(expand("~/.vim/file_tree.vim"))
"   source ~/.vim/file_tree.vim
" endif
" }}} }}}
