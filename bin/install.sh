#!/bin/bash

echo "moving existing .vimrc file…"

cp -vi "$HOME/.vimrc" "$HOME/.vimrc.old"

echo "symlinking .vimrc file…"

ln -svf "$(pwd)/.vimrc" "$HOME/.vimrc"

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
