# yaustn dotfiles

```
ansible-playbook -t dotfiles ansible/setup.yml --ask-become-pass --ask-vault-pass
```

## Installation
Run the `install.sh` script in the root directory to bootstrap all dotfiles and settings.

## Install apps


## .config

## Keyboard Shortcuts

`Super+Enter` - Open terminal

## Other

XDG will automatically recreate the default directory structure upon re-login. Disable with:
sudo vim /etc/xdg/user-dirs.conf
set `Enabled=false`

You can also edit `$HOME/.config/user-dirs.dirs` and comment out any folders that are unnecessary or re-point them to the proper directories

