#!/bin/bash

# Export environment variables we need
export SRC_DIR="$HOME/src"
export DOTFILES_DIR="$SRC_DIR/dotfiles"

mkdir ~/.config -p

# Setup symlinks
./fonts/symlink.sh
./bash/symlink.sh
./compton/symlink.sh
./git/symlink.sh
./i3/symlink.sh
./i3status/symlink.sh
./vim/symlink.sh
./xresources/symlink.sh
./xsettingsd/symlink.sh
