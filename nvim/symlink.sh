#!/bin/bash

[ ! -d $HOME/.config/nvim ] && mkdir $HOME/.config/nvim
[ -h $HOME/.config/nvim/init.vim ] && rm $HOME/.config/nvim/init.vim

ln -sv $DOTFILES_DIR/nvim/init.vim $HOME/.config/nvim/init.vim

