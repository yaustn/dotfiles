#!/bin/bash

[ -d $HOME/.config/i3 ] && rm -rf $HOME/.config/i3

mkdir $HOME/.config/i3
ln -sv $DOTFILES_DIR/i3/config $HOME/.config/i3/config

