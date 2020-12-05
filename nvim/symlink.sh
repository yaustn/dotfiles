#!/bin/bash

[ ! -d $HOME/.config/nvim ] && mkdir $HOME/.config/nvim

ln -sfv $DOTFILES_DIR/nvim/init.vim $HOME/.config/nvim/init.vim

