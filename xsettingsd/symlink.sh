#!/bin/bash

[ -h $HOME/.xinitrc ] && rm -f $HOME/.xinitrc
[ -h $HOME/.xsettingsd ] && rm -f $HOME/.xsettingsd

ln -sv $DOTFILES_DIR/xsettingsd/xinitrc $HOME/.xinitrc
ln -sv $DOTFILES_DIR/xsettingsd/config $HOME/.xsettingsd

