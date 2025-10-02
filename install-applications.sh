#!/bin/bash

sudo apt install -y vlc

# OH MY ZSH
. $DOTFILES_DIR/zsh/install-oh-my-zsh.sh

# Password manager
sudo apt install -y keepassxc
sudo apt install -y kpcli

# Install python3.8
sudo apt install -y python3.8
sudo apt install -y python3-pip
sudo apt install -y virtualenv

# Install nodejs
# nvm?
sudo apt install -y nodejs
sudo apt install -y npm

# Install Solidity tools
# python3 -m pip install --user pipx
# python3 -m pipx ensurepath
# pipx install eth-brownie

