set nocompatible

" basic
syntax on
filetype plugin on
filetype indent on

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

" allow hidden modified buffers
set hidden

" wildmenu
set wildmenu
set wildmode=longest:full

" backspace
set backspace=indent,eol,start

" swap files placement
set directory=~/.vim/swaps//,/tmp

" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" my small functions
source ~/.vim/functions.vim

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
command! -nargs=1 -complete=customlist,go#package#Complete Import call go#import#SwitchImport(1, '', <f-args>, '<bang>')
" noexpandtab for go sources (compatibility with go fmt)
autocmd FileType go set noexpandtab
" highlight operators
let g:go_highlight_operators=1

" markdown settings
autocmd FileType markdown set textwidth=80

" colors
set background=dark
let g:gruvbox_contrast="hard"
colorscheme gruvbox


""" mappings

let mapleader = " "

" go mappings
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>T <Plug>(go-test-func)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go nmap <leader>r <Plug>(go-info)
autocmd FileType go nmap <leader>d :GoDef<space>

" quickfix shortcuts
nnoremap <leader>n :cnext<CR>
nnoremap <leader>p :cprev<CR>

" omnicomplete on TAB
inoremap <TAB> <C-R>=SimpleTab()<CR>

" buffers
map <F9> :bprev<CR>
map <F10> :bnext<CR>
imap <F9> <C-C>:bprev<CR>
imap <F10> <C-C>:bnext<CR>

" fast edit and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :bd<CR>

