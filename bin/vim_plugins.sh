#!/bin/bash

echo "symlinking vim plugins…"

ln -svf "$(pwd)/vim-plugins" "$HOME/.vim/pack/dotfiles-vim-plugins"
