

packadd! dracula_pro

syntax enable

set number

let g:dracula_bold = 0
let g:dracula_italic = 0
let g:dracula_underline = 0
let g:dracula_undercurl = 0
let g:dracula_inverse = 0

colorscheme dracula_pro_van_helsing

filetype plugin indent on

" homebrew fzf
set rtp+=/usr/local/opt/fzf

set expandtab
set tabstop=4
set shiftwidth=4

nmap t :bn<cr>
nmap T :bp<cr>

" Open a new buffer for finding files
nmap - :Ex<cr>

" trying this one out
set backspace=indent,eol,start

" set laststatus=2
let g:airline#extensions#tabline#enabled = 1
