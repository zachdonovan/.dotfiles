" a basic vimrc
" heavily influenced by http://dougblack.io/words/a-good-vimrc.html

" GENERAL

let mapleader = ","
let g:mapleader = ","

" VUNDLE

set nocompatible                        " be iMproved, required
filetype off                            " required for vundle config

set rtp+=~/.vim/bundle/Vundle.vim         " set runtimepath to include Vundle and init
call vundle#begin()                     " all plugins must be ref'd btwn here and #end()

Plugin 'gmarik/Vundle.vim'              " let vundle manage itself (req'd)
Plugin 'altercation/vim-colors-solarized' " solarized color scheme (shit in tmux)
Plugin 'tomasr/molokai'                 " molokai color scheme

call vundle#end()                       " all plugins must be ref'd before this point

" COLORS

syntax on                               " enable syntax highlighting

set tabstop=2                           " number of spaces that tab uses in visual mode

set softtabstop=2                       " number of spaces that tab uses in editing mode

set expandtab                           " use spaces instead of tab characters for tab

set shiftwidth=2                        " << and >> go in increments of 2, to match tab

set background=dark                     " I like my background like I like my coffee

set t_Co=256                            " restrict to 256 colors (for tmux support)
let g:rehash256=1                       " ditto, for molokai

colorscheme molokai                     " set the color scheme

" UI

set number                              " show line numbers

set showcmd                             " shows the last command run

filetype plugin indent on               " track filetype and use format-specific plug/in/dents

set wildmenu                            " visual autocomplete for vim commands

set lazyredraw                          " make vim faster by avoiding redraws

set showmatch                           " highlight matching [{()}]

set ruler                               " show row/column nums and document pct

set nowrap                              " don't wrap lines that don't fit

" SEARCH

set incsearch                           " search as characters are entered

set hlsearch                            " highlight terms matching search

" HOUSECLEANING

set viminfo+=n~/.vim/info               " store viminfo file inside the .vim dir

set backupdir=~/.vim/backups//           " store backups inside the .vim dir
set backup

set dir=~/.vim/swap//                   " store swapfiles in the .vim dir (see a pattern here?)

set undodir=~/.vim/undo//               " store undofiles in the .vim dir (surprise!)
set undofile

set viewdir=~/.vim/views//              " store view files in the .vim dir

" OCAML

" Vim needs to be built with Python scripting support, and must be
" able to find Merlin's executable on PATH.
if executable('ocamlmerlin') && has('python')
  let s:ocamlmerlin = substitute(system('opam config var share'), '\n$', '', '''') . "/ocamlmerlin"
  execute "set rtp+=".s:ocamlmerlin."/vim"
  execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
endif

" turn on ocp-indent for ocaml
autocmd FileType ocaml source substitute(system('opam config var share'), '\n$', '', '''') . "/typerex/ocp-indent/ocp-indent.vim"
