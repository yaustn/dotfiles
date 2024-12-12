# yaustn dotfiles

```
cd $HOME
mkdir github.com
cd github.com
git clone git@github.com:yaustn/dotfiles.git
cd dotfiles
./setup.sh
ansible-playbook -t dotfiles ansible/setup.yml --ask-become-pass --ask-vault-pass
```
