" Install vim-plug: https://github.com/junegunn/vim-plug
"
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" AutoCompleting pair symbols
" Plug 'jiangmiao/auto-pairs'
" AutoCompleting syntax
Plug 'Valloric/YouCompleteMe'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
" Add beatifull status bar
Plug 'vim-airline/vim-airline'
" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ErichDonGubler/vim-sublime-monokai'

" Initialize plugin system
call plug#end()

" Airline options
let g:airline_powerline_fonts = 1 " Turn on powerline fonts
let g:airline#extensions#keymap#enabled = 0 " Don't show current mapping 
let g:airline_section_z = "%l/%L Col:%c"
let g:Powerline_symbols='unicode' " Add supporting unicode sym
let g:airline#extensions#xkblayout#enabled = 0


" YCM: Turn off syntax check 
let g:ycm_show_diagnostics_ui = 0

" Turn on numbers
set number

" Turn on the highlight of searched results
set hlsearch

" Turn on highlight for line with cursor
set cursorline

" YCM off preview
set completeopt-=preview

" Fix slow switching modes
set ttimeoutlen=50

" Turn on the syntax highlight 
syntax on
" Switch colorscheme
colorscheme sublimemonokai
set background=dark

" Set first tab as shiftwidth
set smarttab

" Smart tabs
set smartindent

" Fix bug with cursor in neovim
set guicursor = 

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
