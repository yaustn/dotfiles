#!/bin/bash

[ -h $HOME/.Xresources ] && rm $HOME/.Xresources
[ -h $HOME/.xsettingsd ] && rm $HOME/.xsettingsd
[ -h $HOME/.xinitrc ] && rm $HOME/.xinitrc

ln -sv $DOTFILES_DIR/xresources/config $HOME/.Xresources
ln -sv $DOTFILES_DIR/xresources/xsettingsd $HOME/.xsettingsd
ln -sv $DOTFILES_DIR/xresources/xinitrc $HOME/.xinitrc
