" Basic settings set number
set relativenumber

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

" серая полоса 
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

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

set dictionary=~/.vim/.mydict
set thesaurus=.thesaurus
set complete+=k,s

setlocal spell

syntax enable
syntax on

colorscheme desert

function SetTimeOfDayColors()
  " change colorscheme to evening
  let time = str2nr(strftime('%H'))
  if time > 22
    colorscheme quiet
  endif
endfunction

autocmd BufReadPre * call SetTimeOfDayColors()

" Java settings
let java_highlight_all = 1
let java_highlight_debug = 1
let java_ignore_javadoc = 0
let java_mark_braces_in_parens_as_errors = 1

" Подключение файла с маппингами
if filereadable(expand("~/.vim/maps.vim"))
  source ~/.vim/maps.vim
endif


