set nocompatible

"call plug#begin('~/.vim/plugged')
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'preservim/nerdtree'
"Plug 'preservim/nerdcommenter'
"Plug 'junegunn/fzf.vim'
"Plug 'dracula/vim'
"Plug 'sheerun/vim-polyglot'
"Plug 'mg979/vim-visual-multi'
"call plug#end()

colorscheme dracula
let g:airline_powerline_fonts = 1

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

"autocmd FileType crystal set tabstop=2 | set shiftwidth=2 | set expandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n
"let g:VM_maps["Select Cursor Down"] = '<M-C-Down>'      " start selecting down
"let g:VM_maps["Select Cursor Up"]   = '<M-C-Up>'        " start selecting up

map <C-n> :NERDTreeToggle<CR>

let mapleader = "/"
nnoremap <silent> <leader><leader> :Files<CR>
"inoremap <silent> <leader><leader> <ESC>:Files<CR>
