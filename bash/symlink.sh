#!/bin/bash

# Remove existing symlinks
[ -h $HOME/.bash_aliases ] && rm -f $HOME/.bash_aliases
[ -h $HOME/.bash_fns ] && rm -f $HOME/.bash_fns
[ -h $HOME/.bash_completion ] && rm -f $HOME/.bash_completion
[ -h $HOME/.bash_profile ] && rm -f $HOME/.bash_profile
[ -h $HOME/.bashrc ] && rm -f $HOME/.bashrc

# Setup symlinks
ln -sv $DOTFILES_DIR/bash/bash_aliases $HOME/.bash_aliases
ln -sv $DOTFILES_DIR/bash/bash_completion $HOME/.bash_completion
ln -sv $DOTFILES_DIR/bash/bash_functions $HOME/.bash_fns
ln -sv $DOTFILES_DIR/bash/bash_profile $HOME/.bash_profile
ln -sv $DOTFILES_DIR/bash/bashrc $HOME/.bashrc

