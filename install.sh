#!/bin/bash

echo "Setting environment variables... and directories..."
export PROJECTS_DIR="$HOME/projects"
export DOTFILES_DIR="$PROJECTS_DIR/dotfiles"
echo "Done.\n"

echo "Creating directory structure"
rm -rf $HOME/Downloads
rm -rf $HOME/Desktop
rm -rf $HOME/Documents
rm -rf $HOME/Music
rm -rf $HOME/Pictures
rm -rf $HOME/Public
rm -rf $HOME/Templates
rm -rf $HOME/Videos

mkdir -p $HOME/.config
mkdir -p $HOME/bin
mkdir -p $HOME/tmp
mkdir -p $HOME/downloads
mkdir -p $HOME/public
mkdir -p $HOME/go
echo "Done.\n"

# Install apps and tools
echo "Installing applications..."
. $DOTFILES_DIR/scripts/install-applications.sh

#if ! command -v COMMAND &> /dev/null
#then
#    wget https://golang.org/dl/go1.15.2.linux-amd64.tar.gz -P $HOME/tmp/
#    tar -C /usr/local -xzf $HOME/tmp/go1.15.2.linux-amd64.tar.gz
#    rm $HOME/tmp/go1.15.2.linux-amd64.tar.gz
#    # Add "/usr/local/go/bin" to path
#else
#    echo "Golang is already installed."
#fi

#. $DOTFILES_DIR/z/symlink.sh

echo "Done.\n"

# Setup symlinks
echo "Setting up symlinks..."
#. $DOTFILES_DIR/fonts/symlink.sh
. $DOTFILES_DIR/git/symlink.sh
. $DOTFILES_DIR/zsh/symlink.sh
echo "Done.\n"

