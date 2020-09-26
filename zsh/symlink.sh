#!/bin/bash

[ -h $HOME/.zshrc ] && rm $HOME/.zshrc

ln -sv $DOTFILES_DIR/zsh/zshrc $HOME/.zshrc
