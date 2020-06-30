#!/bin/bash

[ -h $HOME/bin/z ] && rm $HOME/bin/z

ln -sv $DOTFILES_DIR/z/z.sh $HOME/bin/z
