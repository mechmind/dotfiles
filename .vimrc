set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

syntax on
filetype plugin on
filetype indent on

highlight lCursor guifg=NONE guibg=Cyan

set tabstop=4
set shiftwidth=4
set expandtab

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" completion tuning
set completeopt+=longest
set completeopt-=preview

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" python-mode settings
let g:pymode_lint_write = 0
let g:pymode_folding = 0

