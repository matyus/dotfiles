set nocompatible

execute pathogen#infect()
syntax enable
"let g:solarized_termtrans=1
"let g:solarized_termcolors=16
"let g:solarized_visibility="normal"
"let g:solarized_contrast="normal"
"set background=dark
"colorscheme Tomorrow-Night
"colorscheme codeschool
"colorscheme predawn
"colorscheme base16
"let g:gruvbox_contrast_dark="hard"
"colorscheme gruvbox
colorscheme Tomorrow-Night

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

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

let g:syntastic_sass_checkers = ["sass_lint"]
let g:syntastic_scss_checkers = ["sass_lint"]

let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0

autocmd BufWritePre * :%s/\s\+$//e
