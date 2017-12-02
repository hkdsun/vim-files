augroup markdown
  au!
  au BufNewFile,BufRead *.gh.md,*.markdown set filetype=ghmarkdown
  au BufNewFile,BufRead *.gh.md,*.markdown let b:delimitMate_quotes="\" '"
  au BufNewFile,BufRead *.gh.md,*.markdown set tabstop=4
  au BufNewFile,BufRead *.gh.md,*.markdown set softtabstop=4
  au BufNewFile,BufRead *.gh.md,*.markdown set shiftwidth=4
  au BufNewFile,BufRead *.gh.md,*.markdown set textwidth=80
  au BufNewFile,BufRead *.gh.md,*.markdown set colorcolumn=80
augroup END

augroup pandoc_syntax
  au!
  au BufNewFile,BufRead *.pd.md set filetype=markdown.pandoc
  au BufNewFile,BufRead *.pd.md set tabstop=4
  au BufNewFile,BufRead *.pd.md set softtabstop=4
  au BufNewFile,BufRead *.pd.md set shiftwidth=4
  au BufNewFile,BufRead *.pd.md set textwidth=80
  au BufNewFile,BufRead *.pd.md set colorcolumn=80
augroup END

augroup nginx_files
  au!
  au FileType nginx set tabstop=4
  au FileType nginx set softtabstop=4
  au FileType nginx set shiftwidth=4
augroup END
