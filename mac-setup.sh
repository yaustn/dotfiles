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
brew install halloy

# install cli tools
brew install git
brew install wireguard-tools
brew install ansible
brew install docker
brew install docker-compose
brew install eza
brew install tmux
brew install nvim
brew install fzf
brew install pgcli

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# General Settings
defaults write com.apple.screencapture type jpg # take screenshots as jpg (usually smaller size) and not png
defaults write com.apple.Preview ApplePersistenceIgnoreState YES # do not open previous previewed files (e.g. PDFs) when opening a new one
chflags nohidden ~/Library # show Library folder
defaults write com.apple.finder AppleShowAllFiles YES # show hidden files
defaults write com.apple.finder ShowPathbar -bool true # show path bar
defaults write com.apple.finder ShowStatusBar -bool true # show status bar
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false # allow hold key in vscode

killall Finder;

ansible-playbook -t dotfiles ansible/setup.yml --ask-become-pass --ask-vault-pass

# VSCODE
copy settings.json --> /Users/ayoo/Library/Application\ Support/Code/User/settings.json
copy keybindings.json --> /Users/ayoo/Library/Application\ Support/Code/User/keybindings.json
# extensions
be5invis.vscode-icontheme-nomo-dark
golang.go
vscodevim.vim
ms-azuretools.vscode-docker
ms-vscode.makefile-tools




 
### README

    # Appearance
    #     Dark Mode
    #     Show Scroll Bars -> "Always"
    #         Ugly, but better for web development
    # Dock
    #     Remove most applications from Dock
    #     Automatic Hide
    #     Smaller Dock
    #     "Show recent applications in Dock" -> off
    #     "Show indicators for open applications" -> on
    #     Battery -> "Show Percentage"
    # Display
    #     Nightshift
    # Security
    #     Touch ID
    # Notifications
    #     Off, except for Calendar
    # Siri
    #     Disabled
    # Trackpad
    #     Tap to Click
    #     Point & Click -> Look up & data detectors off
    #     More Gestures -> Notification Centre off
    # Keyboard
    #     Text
    #         disable "Capitalise word automatically"
    #         disable "Add full stop with double-space"
    #         disable "Use smart quotes and dashes"
    #         use " for double quotes
    #         use ' for single quotes
    #     Keyboard -> Mission Control -> disable all
    #     Press FN to -> "Do Nothing"
    #     Keyboard Shortcuts -> Spotlight -> CMD + Space disable
    #         We will be using Raycast instead
    # Mission Control
    #     Hot Corners: disable all
    # Finder
    #     General
    #         New Finder windows show: [Downloads]
    #         Show these items on the desktop: disable all
    #     Sidebar:
    #         activate all Favorites
    #         move Library to Favorites
    #     Show only:
    #         Desktop
    #         Downloads
    #         Documents
    #         [User]
    #         Library
    #     Tags
    #         disable all
    #     Advanced
    #         Show all Filename Extensions
    #         Remove Items from Bin after 30 Days
    #         View -> Show Preview (e.g. image files)
    # Sharing
    #     "Change computer name"
    #         Also terminal:
    #             sudo scutil --set ComputerName "newname"
    #             sudo scutil --set LocalHostName "newname"
    #             sudo scutil --set HostName "newname"
    #     "Make sure all file sharing is disabled"
    # Security and Privacy
    #     Turn on FileVault
    #     Add Browser to "Screen Recording"
    # Storage
    #     Remove Garage Band & Sound Library
    #     Remove iMovie
    # Trackpad
    #     Speed: Max
    # Accessibility
    #     Scroll Speed: Max




    # Make iterm2 Default Term
    # Preferences ->
    #     General -> Window
    #         unselect "Native full screen windows"
    #         select "close windows when closing an app"
    #     Appearance ->
    #         Windows
    #             select "Hide scrollbars"
    #         Tabs
    #             unselect "Show tab bar in fullscreen"
    #         Dimming
    #             Unselect all dimming
    #     Profiles -> Window
    #         Transparency: 30
    #         Style: Full Screen
    #         Screen: Main Screen
    #     Profiles -> Advanced
    #         Semantic History -> Open with editor ... -> VS Code
    #     Open new split pane with current directory
    #     Natural Text Editing
    # Bring it to fullscreen Command + Enters