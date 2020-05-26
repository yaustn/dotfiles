#!/bin/bash

# Remove existing symlinks
[ -h $HOME/.gitconfig ] && rm -f $HOME/.gitconfig
[ -h $HOME/.gitignore ] && rm -f $HOME/.gitignore

ln -sv $SRC_DIR/dotfiles/git/gitconfig $HOME/.gitconfig
ln -sv $SRC_DIR/dotfiles/git/gitignore $HOME/.gitignore

