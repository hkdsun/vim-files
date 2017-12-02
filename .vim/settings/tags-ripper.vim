function! ToggleRipperTags()
  if g:tags_ripper
    let g:tags_ripper=0
    echo "Tags Ripper disabled"
  else
    let g:tags_ripper=1
    echo "Tags Ripper enabled"
  endif
endfunction

function! RunTags()
  if g:tags_ripper
    execute "!ripper-tags -R --exclude=vendor ."
  else
    execute "!ctags -R ."
  endif
endfunction

let g:tags_ripper=0
autocmd FileType ruby let g:tags_ripper=1
