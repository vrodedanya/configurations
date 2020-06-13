" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" AutoCompleting pair symbols
Plug 'jiangmiao/auto-pairs'
" AutoCompleting syntax
Plug 'Valloric/YouCompleteMe'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/vim-tomorrow-theme'

" Initialize plugin system
call plug#end()

" Turn on numbers
set number

" Turn on the highlight of searched results
set hlsearch

" YCM off preview
set completeopt-=preview

" Turn on the syntax highlight 
syntax on
" Switch colorscheme
colorscheme PaperColor
set background=dark

" Set first tab as shiftwidth
set smarttab

" Smart tabs
set smartindent

" Space's count for 1 tab
set tabstop=4
set shiftwidth=4

" Make tab like one character not some spaces
set noexpandtab

" NERDTree options
" Show hidden files
let NERDTreeShowHidden=1

" mappings
map <C-n> :NERDTreeToggle<CR>
map <C-c> :nohlsearch<CR>
map <Leader> <Plug>(easymotion-prefix)
