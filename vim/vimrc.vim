" General

set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set expandtab
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

" Plugins

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'

call plug#end()

" NerdTree Config
map <C-n> :NERDTreeToggle<CR>
