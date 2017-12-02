" hack to unify linux and mac. only requirement is that terminal should send
" escape+key on alt+key
execute "set <M-N>=\eN"
execute "set <M-\\>=\e\\"
execute "set <M-/>=\e/"
execute "set <M-A>=\eA"
execute "set <M-%>=\e%"
execute "set <M-R>=\eR"
execute "set <M-Q>=\eQ"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-I>=\eI"

nmap <M-N> :NERDTreeToggle<CR>
nmap <M-\> :NERDTreeFind<CR>
map <leader>nn :NERDTreeToggle<CR>

nmap <silent> <M-I> <Plug>IndentGuidesToggle

nmap ,w :StripTrailingWhitespaces<CR>

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" move up/down quickly by using Alt-j, Alt-k
nnoremap <silent> <M-j> }
nnoremap <silent> <M-k> {
autocmd FileType ruby map <buffer> <M-j> ]m
autocmd FileType ruby map <buffer> <M-k> [m

map <M-/> :TComment<CR>
imap <M-/> <Esc>:TComment<CR>i

nmap <M-A> :Tabularize /
vmap <M-A> :Tabularize /

map <M-%> :so %<CR>

map <M-Q> :redraw!<CR>
map <M-R> :GoRename 

nnoremap Y y$

nnoremap 0 ^
nnoremap ^ 0

nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

map ]t :tn<CR>
map [t :tp<CR>

map ]c :cnext<CR>
map [c :cprevious<CR>

"Go to last edit location with ,.
nnoremap ,. '.

nnoremap <silent> ,z :bprevious<CR>
nnoremap <silent> ,x :bnext<CR>

nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

nmap <silent> // :nohlsearch<CR>

nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

nmap <Left>  <C-w>5<
nmap <Right> <C-w>5>
nmap <Up>    <C-w>2+
nmap <Down>  <C-w>2-

map ,yy "+y
map ,pp "+p

map L :tabnext<CR>
map H :tabprevious<CR>
map T :tabnew<CR>

map <C-i> i<cr><esc>

nnoremap <leader>vcn :tabe! $HOME/.vim/settings.vim<cr>
nnoremap <leader>vc :source $HOME/.vimrc<cr>

nnoremap <leader>we <C-w><C-=>
nnoremap <leader>wh :vertical resize<CR>
nnoremap <leader>wv :resize<CR>
nnoremap <leader>ww :vertical resize<CR>:resize<CR>

nnoremap <leader>hh :set cursorline!<CR>
nnoremap <leader>ll :set number! relativenumber!<CR>
nnoremap <leader>lw :set wrap!<CR>

map <leader>x :next<CR>
map <leader>z :previous<CR>

imap jj <Esc>

nnoremap <D-]> :tnext<CR>
nnoremap <D-[> :tprevious<CR>

map Ï :call RunTags()<CR>
map <D-F> :call RunTags()<CR>

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nmap <leader>agg :Ag! ""<Left>
nmap <leader>agf :AgFile! ""<Left>
nmap <leader>agb :AgBuffer! ""<Left>
nmap <leader>ags :AgFromSearch!<CR>
nnoremap <silent> K :Ag <cword><CR>
vnoremap K :<C-U>execute "Ag " . GetVisual()<CR>

nnoremap <silent> ,tt :FzfFiles<CR>

nmap <Space> <Plug>SneakForward
