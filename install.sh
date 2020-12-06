#!/bin/bash

echo "Setting environment variables... and directories..."
export PROJECTS_DIR="$HOME/projects"
export CODE_DIR="$HOME/code"
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
xdg-user-dirs-update

mkdir -p $HOME/.config
mkdir -p $HOME/tmp
mkdir -p $HOME/Downloads
mkdir -p $HOME/projects
mkdir -p $HOME/code
mkdir -p $HOME/go
echo "Done.\n"

# Install apps and tools
echo "Installing applications..."
. $DOTFILES_DIR/scripts/install-applications.sh
echo "Done.\n"

# Setup symlinks
echo "Setting up symlinks..."
. $DOTFILES_DIR/scripts/install-symlinks.sh
echo "Done.\n"

