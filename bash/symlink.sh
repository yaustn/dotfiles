#!/bin/bash

# Remove existing symlinks
[ -h ~/.bash_aliases ] && rm -f ~/.bash_aliases
[ -h ~/.bash_fns ] && rm -f ~/.bash_fns
[ -h ~/.bash_profile ] && rm -f ~/.bash_profile
[ -h ~/.bashrc ] && rm -f ~/.bashrc

# Setup symlinks
ln -sv $DOTFILES_DIR/bash/bash_aliases ~/.bash_aliases
ln -sv $DOTFILES_DIR/bash/bash_functions ~/.bash_fns
ln -sv $DOTFILES_DIR/bash/bash_profile ~/.bash_profile
ln -sv $DOTFILES_DIR/bash/bashrc ~/.bashrc

