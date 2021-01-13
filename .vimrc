" basic behavior

set number         " show line numbers
set wrap           " wrap lines
set encoding=utf-8 " sets encoding
set lazyredraw     " only draws screen when needed
set showmatch      " highlight matching brackets
set ruler          " show line and colnum of cursor
set visualbell     " no audible bell

" key bindings

nmap j gj          " going up doesn't skip wrapped lines
nmap k gk          " going down doesn't skip wrapped lines

" files
syntax enable
filetype plugin indent on

" tabs
set tabstop=4      " width a <TAB> displays as
set expandtab      " convert <TAB> to spaces
set shiftwidth=4   " spaces per step of autoindent
set softtabstop=4  " backspacing after <TAB>

set autoindent     " copies indent from previous line

" search
set incsearch      " search as chars are entered
set hlsearch       " highlight matches
