#!/bin/bash
#
# Install script for fresh OS (Debian Buster)

# 1) check/add ssh keys

# Extract different concerns to different bash scripts
#   1. install-programs.sh

# Setup directory structure
[ -f ~/projects/dotfiles/scripts/dir.sh ] && . ~/projects/dotfiles/scripts/dir.sh

# Create symlinks
[ -f ~/projects/dotfiles/symlink.sh ] && . ~/projects/dotfiles/symlink.sh

# Install vimplug
[ ! -f ~/.vim/autoload/plug.vim ] && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add repositories
#sudo apt-add-repository ppa:yubico/stable
# sudo apt-add-repository ppa:rael-gc/rvm
# curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update

sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y exa
sudo apt-get install -y i3
sudo apt-get install -y curl

# MFA yubikey
sudo apt-get install -y libpam-u2f
pamu2fcfg > ~/.config/yubi/u2f_keys

# Password manager
sudo apt-get install kpcli
#sudo apt-get install xclip
#sudo apt-get install cpanminus
#sudo cpanm Clipboard
#sudo cpanm Capture::Tiny

sudo wget -P /usr/bin https://raw.githubusercontent.com/rupa/z/master/z.sh
sudo chmod +x /usr/bin/z.sh

# i3
sudo apt-get install -y compton
sudo apt-get install -y hsetroot
sudo apt-get install -y rxvt-unicode
sudo apt-get install -y xsel
sudo apt-get install -y rofi
sudo apt-get install -y fonts-noto
sudo apt-get install -y fonts-mplus
sudo apt-get install -y xsettingsd
sudo apt-get install -y lxappearance
sudo apt-get install -y scrot
sudo apt-get install -y view-noir
