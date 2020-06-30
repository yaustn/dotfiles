#!/bin/bash

# git clone git@github.com:todotxt/todo.txt-cli.git

[ -h $HOME/bin/todo ] && rm $HOME/bin/todo
[ -h $HOME/.todo/config ] && rm $HOME/.todo/config
[ -h $HOME/.bash_completion.d/todo_completion ] && rm $HOME/.bash_completion.d/todo_completion

ln -sv $DOTFILES_DIR/todo/todo.sh $HOME/bin/todo
ln -sv $DOTFILES_DIR/todo/todo.cfg $HOME/.todo/config
ln -sv $DOTFILES_DIR/todo/todo_completion $HOME/.bash_completion.d/todo_completion

