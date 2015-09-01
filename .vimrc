" coloring
syntax on
filetype plugin on
filetype indent on

" colors
highlight lCursor guifg=NONE guibg=Cyan
colorscheme peachpuff
highlight Visual ctermbg=0

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
set colorcolumn=100,120
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

" swap files placement
set directory=~/.vim/swaps//,/tmp

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" completion settings
set completeopt+=longest
set completeopt-=preview
" omnifunc on tab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" airline settings
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" python-mode settings
let g:pymode_lint_on_write = 0
let g:pymode_folding = 0

" session control
set sessionoptions=buffers,curdir,folds,tabpages

" go settings
autocmd FileType go setlocal noexpandtab
" vim-go customization
command! -nargs=1 -complete=customlist,go#package#Complete Import call go#import#SwitchImport(1, '', <f-args>)

" markdown settings
autocmd FileType markdown set textwidth=80

" noexpandtab for go sources (compatibility with go fmt)
autocmd FileType go set noexpandtab

