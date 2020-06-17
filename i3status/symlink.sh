#!/bin/bash

[ -h $HOME/.config/i3status/config ] && rm -f $HOME/.config/i3status/config

ln -sv $DOTFILES_DIR/i3status/config $HOME/.config/i3status/config
