#!/bin/bash

echo "Downloading and installing applications..."

sudo apt update && sudo apt upgrade

# Install python3.8
sudo apt install -y python3.8
sudo apt install -y python3-pip
sudo apt install -y python3-venv

# Install Solidity tools
# python3 -m pip install --user pipx
# python3 -m pipx ensurepath
# pipx install eth-brownie

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y neovim
sudo apt install -y curl
sudo apt install -y vlc

# Password manager
sudo apt install -y keepassxc
sudo apt install -y kpcli

# check out install.sh script in $DOTFILES_DIR/apps

sudo apt install -y build-essential

echo "Done.\n"

