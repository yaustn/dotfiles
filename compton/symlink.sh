#!/bin/bash

[ -d ~/.config/compton ] && rm -rf ~/.config/compton

mkdir ~/.config/compton
ln -sv $DOTFILES_DIR/compton/config ~/.config/compton/config

