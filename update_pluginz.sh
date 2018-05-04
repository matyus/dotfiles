#!/bin/bash

echo "------------- Updating vim pluginz… -------------"

for directory in ~/.vim/pack/pluginz/start/*; do
  cd $directory && git pull origin master
done

echo "------------- Done updating vim pluginz… -------------"
