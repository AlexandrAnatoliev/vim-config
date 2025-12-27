" ==================================================================
" File: colorscheme.vim
" Description: Vim mappings 
" Author: AlexandAnatoliev
" Version: 0.1.18
" Last Modified: 27.12.2025
" ==================================================================

" ------------------------------------------------------------------  
" Function: SetColorscheme()
" Description: Function to change colorscheme evening to remind me 
" to end work and go to bed
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
" SetColorscheme function {{{
function SetColorscheme()
    if filereadable(expand($VIMRUNTIME . "/colors/habamax.vim"))
        colorscheme habamax
    endif

    let time = str2nr(strftime('%H'))
    if time > 21
        if filereadable(expand($VIMRUNTIME . "/colors/blue.vim"))
            colorscheme blue
        endif
    endif
endfunction
" }}}

" call SetColorscheme function {{{
augroup Colorscheme
    autocmd!
    autocmd VimEnter * call SetColorscheme()
augroup END
" }}}

" set grey column {{{
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
" }}}

