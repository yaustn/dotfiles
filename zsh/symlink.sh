#!/bin/bash

ln -sfv $DOTFILES_DIR/zsh/zshrc $HOME/.zshrc

[ ! -d "$HOME/.oh-my-zsh" ] && . $DOTFILES_DIR/zsh/install-oh-my-zsh.sh
