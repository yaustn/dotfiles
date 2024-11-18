sudo apt-get install gnome-tweaks
# swap left ctrl and left alt
# set "switch applications" to ctrl+tab

sudo apt install git

snap install nvim
snap install tmux
snap install code

# setup ssh keys
ssh-keygen -t ed25519 -C "yaustn@pm.me"
# write into bashrc
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# copy into github
cat ~/.ssh/id_ed25519.pub

