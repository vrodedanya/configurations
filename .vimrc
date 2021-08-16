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
Plug 'tpope/vim-fugitive'

Plug 'octol/vim-cpp-enhanced-highlight'
" Add beatifull status bar
Plug 'vim-airline/vim-airline'
" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()

" Airline options
let g:airline_powerline_fonts = 1 " Turn on powerline fonts
let g:airline#extensions#keymap#enabled = 0 " Don't show current mapping 
let g:airline_section_z = "%l/%L Col:%c"
let g:Powerline_symbols='unicode' " Add supporting unicode sym
let g:airline#extensions#xkblayout#enabled = 0

" Vim settings
" Turn on numbers
set number
" Turn on the highlight of searched results
set hlsearch
" Turn on highlight for line with cursor
set cursorline
" Fix slow switching modes
set ttimeoutlen=50

" Tab settings
" Set first tab as shiftwidth
set smarttab
" Smart tabs
set smartindent
" Space's count for 1 tab
set tabstop=4
set shiftwidth=4
" Make tab like one character not some spaces
set noexpandtab

" Colorschemes
" Turn on the syntax highlight 
syntax on
set background=dark
" Switch colorscheme
colorscheme PaperColor

" Plugins
" YCM off preview
set completeopt-=preview
" YCM Turn off syntax check 
let g:ycm_global_ycm_extra_conf = '~/IT/Templates/.ycm_extra_conf.py' " Specify your own way to file
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 1
let g:ycm_clangd_args=['--header-insertion=never'] " Turn off header-insertion

func MyHandler(timer)
  silent exec "YcmForceCompileAndDiagnostics"
endfunc
let timer = timer_start(1000, 'MyHandler', {'repeat': -1})

" NERDTree options
" Show hidden files
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" Other settings
" Fix bug with cursor in neovim
set guicursor = 
let &t_SI="\<Esc>[2 q"

" mappings
map <C-n> :NERDTreeToggle<CR>
map <C-c> :nohlsearch<CR>
map <Leader> <Plug>(easymotion-prefix)
