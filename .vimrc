syntax on
filetype plugin on
filetype indent on

" colors
highlight lCursor guifg=NONE guibg=Cyan
highlight Visual ctermbg=0
colorscheme peachpuff

" russian input on C-^
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" identation with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 'ruler'
set colorcolumn=100
hi ColorColumn ctermbg=0

" wildmenu
set wildmenu
set wildmode=longest:full

" backspace
set backspace=indent,eol,start

" tabs
map <F9> :tabprev<CR>
map <F10> :tabnext<CR>
imap <F9> <C-C>:tabprev<CR>
imap <F10> <C-C>:tabnext<CR>

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" completion settings
set completeopt+=longest
set completeopt-=preview

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" python-mode settings
let g:pymode_lint_write = 0
let g:pymode_folding = 0

" nerdtree settings
map <C-m> :NERDTreeToggle<CR>

" session control
set sessionoptions=buffers,curdir,folds,tabpages

" markdown settings
autocmd FileType markdown set textwidth=80
