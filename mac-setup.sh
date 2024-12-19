#/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# install apps
brew install bitwarden
brew install google-chrome
brew install firefox 
brew install raycast
brew install iterm2
brew install visual-studio-code
brew install calibre

# install cli tools
brew install git
brew install wireguard-tools
brew install ansible
brew install docker
brew install docker-compose
brew install eza
brew install tmux
brew install nvim

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# General Settings
defaults write com.apple.screencapture type jpg # take screenshots as jpg (usually smaller size) and not png
defaults write com.apple.Preview ApplePersistenceIgnoreState YES # do not open previous previewed files (e.g. PDFs) when opening a new one
chflags nohidden ~/Library # show Library folder
defaults write com.apple.finder AppleShowAllFiles YES # show hidden files
defaults write com.apple.finder ShowPathbar -bool true # show path bar
defaults write com.apple.finder ShowStatusBar -bool true # show status bar

killall Finder;


ansible-playbook -t dotfiles ansible/setup.yml --ask-become-pass --ask-vault-pass