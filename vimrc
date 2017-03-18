
set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim


execute pathogen#infect()
filetype plugin indent on

" General options
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

" enable mouse
set mouse=a

" background
syntax enable
"set background=dark
" need to figure out solarized terminal stuff
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme darkblue

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" airline config
set laststatus=2
let g:airline_theme='base16_default'
let g:airline_powerline_fonts=1
