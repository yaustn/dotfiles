#!/bin/bash

# Bash Setup
[ -f ~/.bash_profile ] && rm -f ~/.bash_profile
[ -f ~/.bashrc ] && rm -f ~/.bashrc
[ -f ~/.bash_aliases ] && rm -f ~/.bash_aliases
[ -f ~/.bash_logout ] && rm -f ~/.bash_logout
[ -f ~/.bash_fns ] && rm -f ~/.bash_fns

ln -sv ~/projects/dotfiles/bash/bash_profile ~/.bash_profile
ln -sv ~/projects/dotfiles/bash/bashrc ~/.bashrc
ln -sv ~/projects/dotfiles/bash/bash_aliases ~/.bash_aliases
ln -sv ~/projects/dotfiles/bash/bash_logout ~/.bash_logout
ln -sv ~/projects/dotfiles/bash/bash_fns ~/.bash_fns

# Vim Setup
[ -f ~/.vimrc ] && rm -f ~/.vimrc

ln -sv ~/projects/dotfiles/vim/vimrc ~/.vimrc

# KP DB?
#rm -f ~/.kdb/ahyoo.kdbx
#ln -sv ~/projects/dotfiles/kp/ahyoo.kdbx ~/.kdb/ahyoo.kdbx

# i3 Setup
[ -d ~/.i3 ] && rm -rf ~/.i3

mkdir ~/.i3
ln -sv ~/projects/dotfiles/i3/i3.conf ~/.i3/config
ln -sv ~/projects/dotfiles/i3/compton.conf ~/.i3/compton.conf
ln -sv ~/projects/dotfiles/i3/i3status.conf ~/.i3/i3status.conf

[ -f ~/.Xresources ] && rm -f ~/.Xresources
ln -sv ~/projects/dotfiles/i3/Xresources.conf ~/.Xresources


[ -f ~/.xsettingsd ] && rm -f ~/.xsettingsd
ln -sv ~/projects/dotfiles/i3/xsettingsd.conf ~/.xsettingsd

[ -d ~/.urxvt ] && rm -rf ~/.urxvt
ln -svr ~/projects/dotfiles/urxvt ~/.urxvt
