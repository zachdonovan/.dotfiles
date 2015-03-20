
" a basic vimrc
" heavily influenced by http://dougblack.io/words/a-good-vimrc.html

" COLORS

syntax on                               " enable syntax highlighting

set tabstop=2                           " number of spaces that tab uses in visual mode

set softtabstop=2                       " number of spaces that tab uses in editing mode

set expandtab                           " use spaces instead of tab characters for tab

set shiftwidth=2                        " << and >> go in increments of 2, to match tab

" UI

set number                              " show line numbers

set showcmd                             " shows the last command run

set cursorline                          " highlights the current cursor line

filetype indent on                      " track filetype and use format-specific indentation

set wildmenu                            " visual autocomplete for vim commands

set lazyredraw                          " make vim faster by avoiding redraws

set showmatch                           " highlight matching [{()}]

" SEARCH

set incsearch                           " search as characters are entered

set hlsearch                            " highlight terms matching search


