### Intro

I still remember the first time I used Vim: _"wait, what's going on"_ followed by _"how the fuck do I get out of here?"_. Few years have passed since then and I've never really changed my text editor due to various influences, most notably seeing power users work with it (hey Derek!).

This past week, I've spent some time consolidating my Vim configuration in a hopefully readable bundle and uploaded a snapshot of it. I'm hoping this is useful to someone. It'll also help me reference it in conversation.

### Some history

In the early days, my configuration was minimal. I gradually explored a lot of other people's dotfiles raking in the stuff I found interesting. I finally went through a revolution on a random night and started using [YADR](https://github.com/skwp/dotfiles/YADR) . Few days in, I forked it and made a lot of modifications to so it suited my preferences more. I eventually did a small rewrite of my Vim settings based on the ideas from YADR. Last week, a coworker asked if they can see my dotfiles so I was encouraged to clean it up and share it. Here we are now.

Vim forever \o/

### Favourite parts

* The hack in `keymap.vim` that finally consolidated my linux and macos ALT bindings
* Activating bindings with autocmds (`golang.vim`)
* The legendary `vim-go` plugin

### Structure

```
├── .vim
│   ├── bundle
│   ├── settings
│   │   ├── appearance.vim
│   │   ├── before-vundles.vim
│   │   ├── diff-colors.vim
│   │   ├── erb.vim
│   │   ├── fzf.vim
│   │   ├── golang.vim
│   │   ├── goyo.vim
│   │   ├── keymap.vim             <= shit ton of bindings
│   │   ├── latex.vim
│   │   ├── lightline.vim
│   │   ├── markdown.vim
│   │   ├── neocomplete.vim
│   │   ├── nerdtree.vim
│   │   ├── python.vim
│   │   ├── rust.vim
│   │   ├── solarized.vim
│   │   ├── spaces.vim
│   │   ├── statusline.vim
│   │   ├── sudo-write.vim
│   │   ├── syntastic.vim
│   │   ├── tags-ripper.vim        <= tags for ruby (requires gem `tag-ripper`)
│   │   ├── tcomment.vim
│   │   ├── ultisnips.vim          <= great for learning new languages
│   │   ├── vim-fugitive.vim
│   │   ├── vim-indent-guides.vim
│   │   ├── vim-test.vim
│   │   ├── vim-tmux-navigator.vim
│   │   ├── vimwiki.vim
│   │   ├── whitespace-killer.vim  <= trailing \w killer
│   │   └── window-killer.vim      <= close buffers/windows with Q
│   ├── settings.vim               <= loads settings/*
│   └── vundles.vim                <= plugins
└── .vimrc                         <= entry point
