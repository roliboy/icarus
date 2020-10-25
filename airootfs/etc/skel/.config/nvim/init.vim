colorscheme gruvbox
"let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1

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
