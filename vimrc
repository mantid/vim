" *****************
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

" turn on syntax highlighting                        
filetype plugin indent on
syntax on

" allow powerline symbols
let g:Powerline_symbols = 'fancy'

" vim-plug plugin manager
" remember to run:
"  :source %
"  :PlugInstall
call plug#begin()
Plug 'pearofducks/ansible-vim'
Plug 'hashivim/vim-terraform'
" NERD tree will be loaded on the first invocation of NERDTreeToggle
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
call plug#end()

let g:terraform_fmt_on_save = 1

" open NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" use solarized colours
syntax enable
if has('gui_running')
    set background=light
else
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    set background=dark
endif
colorscheme solarized
