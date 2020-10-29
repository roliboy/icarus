"call plug#begin('~/.vim/plugged')
"Plug 'vim-crystal/vim-crystal'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'preservim/nerdtree'
"Plug 'preservim/nerdcommenter'
"
"Plug 'ntpeters/vim-better-whitespace'
"Plug 'junegunn/fzf.vim'
"
""colorschemes
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'AlessandroYorba/Alduin'
"Plug 'morhetz/gruvbox'
"Plug 'sjl/badwolf'
"
"Plug 'mg979/vim-visual-multi'
"
"
"call plug#end()

colorscheme gruvbox
let $BAT_THEME = 'gruvbox'
"let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0

let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1

set nu
set rnu

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

"let g:airline#extensions#tabline#buffer_idx_mode = 1

let mapleader = "/"
nnoremap <silent> <leader><leader> :Files<CR>
"inoremap <silent> <leader><leader> <ESC>:Files<CR>

nnoremap <silent> <leader>' :terminal<CR>i
tnoremap <silent> <leader>' <C-d><CR><CR>
"inoremap <silent> ~ <ESC>:terminal<CR>i
"nnoremap <C-S-tab> :bprevious<CR>
"nnoremap <C-tab> :bnext<CR>



