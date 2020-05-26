#!/bin/bash

[ -h $HOME/.Xresources ] && rm $HOME/.Xresources

ln -sv $DOTFILES_DIR/xresources/config $HOME/.Xresources
