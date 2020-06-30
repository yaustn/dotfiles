#!/bin/bash

# Export environment variables we need
export SRC_DIR="$HOME/src"
export DOTFILES_DIR="$SRC_DIR/dotfiles"

mkdir $HOME/.config -p
mkdir $HOME/.bash_completion.d -p
mkdir $HOME/bin -p

# Setup symlinks
echo "Setting up symlinks..."
. $DOTFILES_DIR/bash/symlink.sh
. $DOTFILES_DIR/fonts/symlink.sh
. $DOTFILES_DIR/compton/symlink.sh
. $DOTFILES_DIR/git/symlink.sh
. $DOTFILES_DIR/i3/symlink.sh
. $DOTFILES_DIR/i3status/symlink.sh
. $DOTFILES_DIR/vim/symlink.sh
. $DOTFILES_DIR/xresources/symlink.sh
echo ""

# Install applications
echo "Installing applications..."
. $DOTFILES_DIR/todo/symlink.sh
echo ""

