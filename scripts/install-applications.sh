#!/bin/bash

echo "Downloading and installing applications..."

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
sudo apt install -y virtualenv

# Install nodejs
# nvm?
sudo apt install -y nodejs
sudo apt install -y npm

# Install Solidity tools
# python3 -m pip install --user pipx
# python3 -m pipx ensurepath
# pipx install eth-brownie

npm install -g truffle
npm install -g ganache-cli

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
sudo apt install -y libreoffice

# MongoDB
# wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
# echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
# sudo apt-get update
# sudo apt-get install -y mongo-org
# sudo systemctl start mongod

# sudo apt-get install mongo-compass
# sudo apt-get install postman

sudo apt-get install mozillavpn

echo "Done.\n"

