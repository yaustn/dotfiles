#!/bin/bash

# Remove existing symlinks
[ -d ~/.fonts ] && rm -rf ~/.fonts

# Create fonts directory and link fonts there
mkdir ~/.fonts
ln -sfv $DOTFILES_DIR/fonts/gohufont-11.ttf ~/.fonts/gohufont-11.ttf
ln -sfv $DOTFILES_DIR/fonts/gohufont-14.ttf ~/.fonts/gohufont-14.ttf

# Refresh fonts cache
fc-cache
