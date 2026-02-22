nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>

function! GrepOperator(type)
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif

  let current_colorscheme = exists('g:colors_name') ? g:colors_name : 'default'
  silent execute "grep! -R " . shellescape(@@) . " ."
  copen
  execute "colorscheme " . current_colorscheme
endfunction


