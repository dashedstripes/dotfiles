" Plugins

call plug#begin(stdpath('data') . '/plugged')

Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'itchyny/vim-gitbranch'

call plug#end()

" General

set number
set termguicolors

" Colors

colorscheme gruvbox
let g:lightline = {'colorscheme' : 'gruvbox'}
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Key Maps

nnoremap <Tab> :NERDTreeToggle<CR>
nnoremap <C-P> :Files<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
