set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

syntax on
filetype plugin on
filetype indent on

highlight lCursor guifg=NONE guibg=Cyan

" identation with spaces
set tabstop=4
set shiftwidth=4
set expandtab

" 'ruler'
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%101v.\+/

" wildmenu
set wildmenu
set wildmode=longest:full

" tabs
map <F9> :tabprev<CR>
map <F10> :tabnext<CR>
imap <F9> <C-C>:tabprev<CR>
imap <F10> <C-C>:tabnext<CR>

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

" nerdtree settings
map <C-m> :NERDTreeToggle<CR>

