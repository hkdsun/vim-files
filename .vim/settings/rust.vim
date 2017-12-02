augroup rust_bindings
  au!
  au BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
  au FileType rust nmap <leader>r :make run<CR>
  au FileType rust nmap <leader>t :make test<CR>
  au FileType rust nmap <silent> <leader>b :make build<CR>
  au QuickFixCmdPost [^l]* nested cwindow
  au QuickFixCmdPost    l* nested lwindow
augroup END

let g:rust_conceal = 1
let g:rustfmt_autosave = 1
