#!/bin/bash

[ -h $HOME/.vimrc ] && rm -f $HOME/.vimrc

ln -sv $DOTFILES_DIR/vim/vimrc $HOME/.vimrc

