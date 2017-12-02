let g:limelight_conceal_ctermfg = 240

set bg=light

function! s:auto_goyo()
  if &ft == 'vimwiki'
    Goyo 80
  endif
endfunction

augroup goyo_markdown
  autocmd!
  autocmd BufNewFile,BufRead * call s:auto_goyo()
augroup END

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  Limelight!
  set bg=light
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
