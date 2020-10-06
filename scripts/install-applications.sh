#!/bin/bash

echo "Downloading and installing applications..."

sudo apt update && sudo apt upgrade

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y neovim
sudo apt install -y vlc

# Password manager
#sudo apt install -y keepassxc
sudo apt install -y kpcli

echo "Done.\n"

# Install Material Shell for Gnome
# git clone https://github.com/material-shell/material-shell.git ~/.local/share/gnome-shell/extensions/material-shell@papyelgringo


