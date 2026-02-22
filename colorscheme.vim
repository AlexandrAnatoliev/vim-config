" ==================================================================
" File: colorscheme.vim
" Description: Vim mappings 
" Author: AlexandAnatoliev
" Version: 0.1.39
" Last Modified: 22.02.2026
" ==================================================================

" SetColorscheme function {{{
" ------------------------------------------------------------------  
" Function: SetColorscheme()
" Description: Function to change colorscheme evening to remind me 
" to end work and go to bed
" Parameters: None
" Returns: None
" ------------------------------------------------------------------  
function s:SetColorscheme()
  if filereadable($VIMRUNTIME . "/colors/habamax.vim")
    colorscheme habamax
  endif

  let time = str2nr(strftime('%H'))
  if time ># 21
    if filereadable($VIMRUNTIME . "/colors/blue.vim")
      colorscheme blue
    endif
  endif
endfunction
" }}}

" call SetColorscheme function {{{
augroup Colorscheme
  autocmd!
  autocmd VimEnter * call <SID>SetColorscheme()
augroup END
" }}}

" highlights all characters in virtual column 80 and more {{{
highlight rightMargin term=bold ctermfg=blue guifg=blue
augroup TrailingHightLight
  autocmd!
  autocmd BufEnter,Winenter,BufRead * match rightMargin /.\%>80v/
augroup END
" }}}

