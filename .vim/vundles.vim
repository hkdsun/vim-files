" settings that need to be set before loading plugins
if filereadable(expand("~/.vim/setting/before-vundles.vim"))
  source ~/.vim/settings/before-vundles.vim
endif

if isdirectory("/usr/local/opt/fzf")
  set rtp+=/usr/local/opt/fzf
endif

set rtp+=~/.vim/bundle/vundle/

" required by vundle
filetype off

call vundle#rc()

" let Vundle manage Vundle (required)
Plugin 'gmarik/vundle'

" Textobjects
Plugin 'austintaylor/vim-indentobject'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-textobj-underscore'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'thinca/vim-textobj-function-javascript'
Plugin 'vim-scripts/argtextobj.vim'

" Searching
Plugin 'rking/ag.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'taiansu/nerdtree-ag'

" Project management
Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'junegunn/fzf.vim'
Plugin 'janko-m/vim-test'
Plugin 'benmills/vimux'
Plugin 'gmarik/github-search.vim'

" vim-improvements.vundle
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'vimwiki/vimwiki.git'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Shougo/neocomplete.git'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'tomtom/tlib_vim.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/lastpos.vim'
Plugin 'vim-scripts/sudo.vim'

" Git
Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rhubarb'
Plugin 'airblade/vim-gitgutter'

" Languages
Plugin 'sheerun/vim-polyglot'
Plugin 'honza/vim-snippets'
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'scrooloose/syntastic.git'
Plugin 'SirVer/ultisnips'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'

" Ruby
Plugin 'vim-ruby/vim-ruby.git'
Plugin 'tpope/vim-bundler'

" Appearance
Plugin 'skwp/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'severin-lemaignan/vim-minimap'

" Required for Gblame in terminal vim
Plugin 'godlygeek/csapprox.git'

" required by vundle
filetype plugin indent on
