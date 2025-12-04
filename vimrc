" ==================================================================
" File: vimrc
" Description: my vim config 
" Autor: AlexandAnatoliev
" Version: 0.1.4
" Last Modified: 4.12.2025
" ==================================================================

" Basic settings set number
" set relativenumber
set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType markdown setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType jsp setlocal tabstop=2 softtabstop=2 shiftwidth=2

set nowrap
set sidescroll=8
set sidescrolloff=8
set scrolloff=8

set showmatch

set incsearch

set laststatus=2

set winwidth=100
set winminwidth=45

" set foldcolumn=1
set foldmethod=indent
set foldlevel=1
filetype indent on
set indentexpr

setlocal spell

syntax enable
syntax on

" Java settings
let java_highlight_all = 1
let java_highlight_debug = 1
let java_ignore_javadoc = 0
let java_mark_braces_in_parens_as_errors = 1

" Set mappings
if filereadable(expand("~/.vim/maps.vim"))
  source ~/.vim/maps.vim
endif

" Color scheme settings
if filereadable(expand("~/.vim/colorscheme.vim"))
  source ~/.vim/colorscheme.vim
endif

" Autocomplete setting  
if filereadable(expand("~/.vim/autocomplete.vim"))
  source ~/.vim/autocomplete.vim
endif
