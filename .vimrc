execute pathogen#infect()
syntax enable
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:polarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized
set background=dark

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

set runtimepath^=~/.vim/bundle/ctrlp.vim
let NERDTreeShowBookmarks=1 "show bookmark at start up

"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
autocmd BufWritePre * :%s/\s\+$//e
