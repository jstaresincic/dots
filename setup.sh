#!/bin/bash

# copy files to directories
cp ./.gitmessage ~/.gitmessage
# TODO: all other copying

# TODO: installs

#exports and configs
export VISUAL=nvim
export EDITOR="$VISUAL"

git config --global commit.template ~/.gitmessage
