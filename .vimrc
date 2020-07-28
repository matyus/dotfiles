set nocompatible

syntax enable

set clipboard=unnamed

set backspace=indent,eol,start

filetype plugin indent on
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
set encoding=utf-8
set backupskip=/tmp/*,/private/tmp/*
set number
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set ruler
set nospell
set history=1000
set cursorline

set showmode
set showcmd
set scrolloff=5

let g:netrw_preview = 1
let g:netrw_liststyle = 0
let g:netrw_winsize = 20
let g:netrw_banner = 0

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

nnoremap <Leader><Space> :noh<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>e :Explore<CR>
nmap <Leader>g :tabprevious<CR>
nmap <Leader>l :tabnext<CR>

nmap <Leader>G :Gstatus<CR>
nmap <Leader>B :Gblame<CR>

"Bubble line
nmap ˚ ddkP
nmap ∆ ddp

"Bubble Multi-line
vmap ˚ xkP`[V`]
vmap ∆ xp`[V`]

"Navigate buffers
nmap Ó :bprevious<CR>
nmap Ò :bnext<CR>
nmap <D-M-l> :bnext<CR>
nmap <D-M-j> :bprevious<CR>

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

let g:jsx_ext_required = 0
"
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\'javascript': ['eslint'],
\}
let g:ale_fixers = {
\'javascript': ['eslint'],
\}

autocmd BufWritePre * :%s/\s\+$//e
"
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
