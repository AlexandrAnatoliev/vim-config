" ==================================================================
" File: colorscheme.vim
" Description: Vim mappings 
" Autor: AlexandAnatoliev
" Version: 0.1.2
" Last Modified: 3.12.2025
" ==================================================================

" ------------------------------------------------------------------  
" Function: SetColorscheme()
" Description: Function to change colorscheme evening to remaind me 
" to end work and go to bed
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function SetColorscheme()
    if filereadable(expand($VIMRUNTIME . "/colors/habamax.vim"))
        colorscheme habamax
    endif

    let time = str2nr(strftime('%H'))
    if time > 22
        if filereadable(expand($VIMRUNTIME . "/colors/blue.vim"))
            colorscheme blue
        endif
    endif
endfunction

autocmd VimEnter * call SetColorscheme()

" set grey column 
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

