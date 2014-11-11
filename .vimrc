set nocompatible

execute pathogen#infect()

syntax on

let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="normal"
"colorscheme solarized
color solarized
set background=dark

" spaces not tabs, not sure if there's bloat here
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab

set backupdir=~/.vim/backups
set directory=~/.vim/swaps

if exists("&undodir")
  set undodir=~/.vim/undo
endif

set backupskip=/tmp/*,/private/tmp/*

" trying to speed up ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" line numbers?
set number

"invisible characters exposed
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

set list
set hlsearch
set incsearch
set laststatus=2

set mouse=a

set ruler
set cursorline

set showmode
set showcmd
set scrolloff=5

if $TMUX == ''
  set clipboard+=unnamed
endif
set runtimepath^=~/.vim/bundle/ctrlp.vim

let NERDTreeShowBookmarks=1 "show bookmark at start up
let NERDTreeShowHidden=1 "show hidden files

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap \l :noh<CR>
nnoremap \f :NERDTreeToggle<CR>

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

filetype indent plugin on

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
autocmd BufWritePre * :%s/\s\+$//e
