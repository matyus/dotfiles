set nocompatible

execute pathogen#infect()
syntax enable
let g:solarized_termtrans=1
let g:solarized_termcolors=16
let g:solarized_visibility="normal"
let g:solarized_contrast="normal"
set background=dark
colorscheme solarized

filetype plugin indent on
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
set backupskip=/tmp/*,/private/tmp/*
set number
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set ruler

set showmode
set showcmd
set scrolloff=5

let g:netrw_preview = 1
let g:netrw_winsize = 55

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

nnoremap <Leader>l :noh<CR>
nmap <Leader>w :w<CR>
nmap <Leader>e :Explore<CR>

"Bubble line
nmap ˚ ddkP
nmap ∆ ddp

"Bubble Multi-line
vmap ˚ xkP`[V`]
vmap ∆ xp`[V`]

"Navigate buffers
nmap Ó :bnext<CR>
nmap Ò :bprevious<CR>
nmap <D-M-l> :bnext<CR>
nmap <D-M-j> :bprevious<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufWritePre * :%s/\s\+$//e
