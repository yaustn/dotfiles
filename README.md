# yaustn dotfiles

```
cd $HOME
mkdir github.com
cd github.com
git clone https://github.com/yaustn/dotfiles.git
```


Starting to migrate my dotfiles over to using stow instead of ansible for setup:

```
stow -v -t ~ nvim
stow -v -t ~ zsh --adopt
```
