let notes_root = '~/Documents/Vimwiki'
let notes_dir = notes_root.'/notes/'
let html_dir = notes_root.'/html/'

let g:vimwiki_list = [{
  \ 'path': notes_dir,
  \ 'path_html': html_dir,
  \ 'template_path': notes_root.'/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html',
  \ 'ext': '.md'
\ }]

let g:vimwiki_global_ext = 0

execute "nnoremap <silent> ,vn :FzfFiles ".notes_dir."<CR>"
execute "nnoremap <silent> ,vv :tabe! ".notes_dir."<CR> :VimwikiIndex<CR>"
execute "nnoremap <silent> ,vi :VimwikiIndex<CR>"
