#!/bin/bash

echo "handling vim"

cp -vi "$HOME/.vimrc" "$HOME/.vimrc.old"

echo "symlinking vim"

ln -svf "$(pwd)/.vimrc" "$HOME/.vimrc"
ln -svf "$(pwd)/.vim/" "$HOME/.vim"


echo "moving existing .tmux.conf…"

cp -vi "$HOME/.tmux.conf" "$HOME/.tmux.conf.old"

echo "symlinking .tmux.conf file…"

ln -svf "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"



echo "moving existing .zshrc file…"

cp -vi "$HOME/.zshrc" "$HOME/.zshrc.old"

echo "symlinking .zshrc file…"

ln -svf "$(pwd)/.zshrc" "$HOME/.zshrc"



echo "moving existing .gitconfig file…"

cp -vi "$HOME/.gitconfig" "$HOME/.gitconfig.old"

echo "symlinking .gitconfig file…"

ln -svf "$(pwd)/.gitconfig" "$HOME/.gitconfig"



echo "symlinking aliases file…"

ln -svf "$(pwd)/oh-my-zsh/custom.zsh" "$ZSH/custom/dotfiles-custom.zsh"

