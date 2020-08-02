#!/bin/bash

echo "handling old vim"

cp -vi "$HOME/.vimrc" "$HOME/.vimrc.old"
mv "$HOME/.vim/" "$HOME/.vim.old"

echo "symlinking vim"

ln -svf "$(pwd)/.vimrc" "$HOME/.vimrc"
ln -svf "$(pwd)/.vim/" "$HOME/.vim"



echo "moving existing .tmux.conf…"

cp -vi "$HOME/.tmux.conf" "$HOME/.tmux.conf.old"

echo "symlinking .tmux.conf file…"

ln -svf "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"



echo "handling old zsh"

cp -vi "$HOME/.zshrc" "$HOME/.zshrc.old"

echo "handle oh"

ln -svf "$(pwd)/.zshrc" "$HOME/.zshrc"
ln -svf "$(pwd)/oh-my-zsh/custom.zsh" "$ZSH/custom/dotfiles-custom.zsh"



echo "moving existing .gitconfig file…"

cp -vi "$HOME/.gitconfig" "$HOME/.gitconfig.old"

echo "symlinking .gitconfig file…"

ln -svf "$(pwd)/.gitconfig" "$HOME/.gitconfig"

