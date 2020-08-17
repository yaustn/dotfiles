#!/bin/bash

# Remove existing symlinks
[ -h $HOME/.gitconfig ] && rm -f $HOME/.gitconfig
[ -h $HOME/.gitignore ] && rm -f $HOME/.gitignore

ln -sv $DOTFILES_DIR/git/gitconfig $HOME/.gitconfig
ln -sv $DOTFILES_DIR/git/gitignore $HOME/.gitignore

