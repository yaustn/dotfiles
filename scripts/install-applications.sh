#!/bin/bash

echo "Downloading and installing applications..."

sudo apt update && sudo apt upgrade

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y neovim
sudo apt install -y curl
sudo apt install -y exa
sudo apt install -y vlc

# OH MY ZSH
. $DOTFILES_DIR/zsh/install-oh-my-zsh.sh

# Password manager
sudo apt install -y keepassxc
sudo apt install -y kpcli

# Install python3.8
sudo apt install -y python3.8
sudo apt install -y python3-pip
sudo apt install -y python3-venv

# Install Solidity tools
# python3 -m pip install --user pipx
# python3 -m pipx ensurepath
# pipx install eth-brownie

# Golang 1.15.6
if ! command -v go &> /dev/null
then
    wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz -P $HOME/tmp/
    sudo tar -C /usr/local -xzf $HOME/tmp/go1.15.6.linux-amd64.tar.gz
    rm $HOME/tmp/go1.15.6.linux-amd64.tar.gz
else
    echo "Golang is already installed."
fi

sudo apt install -y build-essential

echo "Done.\n"

