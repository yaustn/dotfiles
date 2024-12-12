#/bin/bash

#brew or apt for mac?

brew install ansible

sudo apt install git

snap install nvim
snap install tmux
snap install code


ansible-playbook -t dotfiles ansible/setup.yml --ask-become-pass --ask-vault-pass