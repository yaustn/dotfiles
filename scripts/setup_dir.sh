#!/bin/bash
# Setup directory structure on new Linux machines

# Remove default directories
[ -d ~/Desktop ] && rm -rf ~/Desktop
[ -d ~/Documents ] && rm -rf ~/Documents
[ -d ~/Downloads ] && rm -rf ~/Downloads
[ -d ~/Examples ] && rm -rf ~/Examples
[ -d ~/Music ] && rm -rf ~/Music
[ -d ~/Pictures ] && rm -rf ~/Pictures
[ -d ~/Public ] && rm -rf ~/Public
[ -d ~/Templates ] && rm -rf ~/Templates
[ -d ~/Videos ] && rm -rf ~/Videos

# Create my directories
[ ! -d ~/src ] && mkdir ~/src
[ ! -d ~/inbound ] && mkdir ~/inbound
[ ! -d ~/outbound ] && mkdir ~/outbound

