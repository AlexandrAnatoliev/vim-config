" ==================================================================
" File: vimrc
" Description: my Vim configuration
" Author: AlexandAnatoliev
" Version: 0.1.5
" Last Modified: 4.12.2025
" ==================================================================

" =======================BASIC SETTINGS========================================
" Line numbering
set number

" Encoding settings
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" =======================INDENTATION SETTINGS==================================

" Basic tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Filetype-specific tab settings
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType markdown setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType jsp setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Automatic indentation based on file type
filetype indent on

" =======================WINDOW SETTINGS=======================================

" Window size
set winwidth=100
set winminwidth=45

" Status line
set laststatus=2

" =======================SCROLL SETTINGS=======================================

" Line wrapping and scrolling 
set nowrap
set sidescroll=8
set sidescrolloff=8
set scrolloff=8

" =======================SEARCH SETTINGS=======================================

" Search behavior
set incsearch
set showmatch


" =======================FOLDING SETTINGS======================================

" Code folding
set foldmethod=indent
set foldlevel=1

" =======================SPELL CHECK AND SYNTAX================================

" Set checking and syntax highlighting
set spell
syntax on

" =======================JAVA SETTINGS=========================================

" Java-specific highlighting
let java_highlight_all = 1
let java_highlight_debug = 1
let java_ignore_javadoc = 0
let java_mark_braces_in_parens_as_errors = 1

" =======================FILE INCLUSION========================================

" Load key mappings
if filereadable(expand("~/.vim/maps.vim"))
  source ~/.vim/maps.vim
endif

" Load color scheme settings
if filereadable(expand("~/.vim/colorscheme.vim"))
  source ~/.vim/colorscheme.vim
endif

" Load autocomplete setting  
if filereadable(expand("~/.vim/autocomplete.vim"))
  source ~/.vim/autocomplete.vim
endif
