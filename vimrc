" Basic settings
set number
set relativenumber

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" серая полоса 
set colorcolumn=70
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

set nowrap
set sidescroll=8
set scrolloff=8

set showmatch

set incsearch

set laststatus=2

set mouse=a

set winwidth=100
set winminwidth=50

" Java settings
let java_highlight_all = 1
let java_highlight_debug = 1
let java_ignore_javadoc = 0
let java_mark_braces_in_parens_as_errors = 1

" Подключение файла с маппингами
if filereadable(expand("~/.vim/maps.vim"))
  source ~/.vim/maps.vim
endif


