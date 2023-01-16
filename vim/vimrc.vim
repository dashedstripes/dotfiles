" config
set relativenumber 
set number
set expandtab tabstop=2 shiftwidth=2 softtabstop=2 
set autoindent
set showmode showcmd
set showmatch
set hlsearch incsearch ignorecase smartcase
set autochdir
set hidden
set laststatus=2 statusline=%F
set clipboard=unnamed
set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1
set termguicolors 

" plugins
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'apzelos/blamer.nvim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'

call plug#end()

" plugin config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
