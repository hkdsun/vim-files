let settings_dir = '~/.vim/settings'

for fpath in split(globpath(settings_dir, '*.vim'), '\n')
  exe 'source' fpath
endfor
