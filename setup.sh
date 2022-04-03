#!/bin/bash

# copy files to directories
cp -v ./.gitmessage ~/.gitmessage
cp -v ./.ideavimrc ~/.ideavimrc
cp -rv ./nvim ~/.config
cp -rv ./coc/extensions ~/.config/coc

# TODO: installs
cd ~/.config/coc/extensions && npm install

#exports and configs
export VISUAL=nvim
export EDITOR="$VISUAL"

git config --global commit.template ~/.gitmessage
