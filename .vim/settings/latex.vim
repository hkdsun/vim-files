augroup latex_syntax
    au! BufNewFile,BufFilePre,BufRead *.tex
    au! BufNewFile,BufFilePre,BufRead *.tex set textwidth=80
    au! BufNewFile,BufFilePre,BufRead *.tex set colorcolumn=80
augroup END

let g:tex_flavor="latex"
