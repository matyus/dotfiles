#!/bin/bash

echo "moving existing .vimrc file…"

cp -vi "$HOME/.vimrc" "$HOME/.vimrc.old"

echo "symlinking .vimrc file…"

ln -sv "$(pwd)/.vimrc" "$HOME/.vimrc"

echo "moving existing .tmux.conf…"

cp -vi "$HOME/.tmux.conf" "$HOME/.tmux.conf.old"

echo "symlinking .tmux.conf file…"

ln -sv "$(pwd)/.tmux.conf" "$HOME/.tmux.conf"

echo "moving existing .zshrc file…"

cp -vi "$HOME/.zshrc" "$HOME/.zshrc.old"

echo "symlinking .zshrc file…"

ln -sv "$(pwd)/.zshrc" "$HOME/.zshrc"
