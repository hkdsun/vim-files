augroup erb_bindings
  au!
  au FileType eruby imap <silent> <C-K> <%=  %><Esc>3hi
  au FileType eruby imap <silent> <C-J> <%  %><Esc>2hi
augroup END
