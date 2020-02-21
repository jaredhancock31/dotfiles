call plug#begin('~/local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tomasiser/vim-code-dark'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number
" Search
set ignorecase
set incsearch
set smartcase

" fix splitting
set splitbelow splitright

"""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set nowrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
set background=dark
colorscheme codedark



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 350
" vim-airline
let g:airline_theme = 'codedark'


