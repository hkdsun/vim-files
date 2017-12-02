set nocompatible

set number
set relativenumber
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set mouse=a
set hidden

syntax on
set synmaxcol=500

let mapleader=","

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

set noswapfile
set nobackup
set nowb

if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set list
set listchars=tab:>-,trail:·

set nowrap
set linebreak

set foldmethod=indent
set foldlevelstart=10
set foldnestmax=3
set nofoldenable

set wildmode=list:longest
set wildmenu

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set incsearch
set hlsearch
set ignorecase
set smartcase

set timeoutlen=400 ttimeoutlen=0

filetype plugin on
filetype indent on

" Source settings now
so ~/.vim/settings.vim
