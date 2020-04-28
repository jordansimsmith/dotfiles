#!/bin/bash

# running as root changes home directory expansion
if (( $(id -u) == 0)); then
  echo "Please do not run this as root."
  exit 1
fi

# Ensure folder structure
mkdir -p ~/.config/{i3,i3status,zathura}

# Link dotfiles to home directory
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/vim/* ~/.vim
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/dmenurc ~/.dmenurc
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/profile ~/.profile
ln -sf $(pwd)/muttrc ~/.muttrc
ln -sf $(pwd)/mutt/* ~/.mutt
ln -sf $(pwd)/config/i3/config ~/.config/i3/config
ln -sf $(pwd)/config/i3status/config ~/.config/i3status/config
ln -sf $(pwd)/config/systemd/user/* ~/.config/systemd/user
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/config/zathura/zathurarc ~/.config/zathura/zathurarc
ln -sf $(pwd)/config/mimeapps.list ~/.config/mimeapps.list

sudo ln -sf $(pwd)/fonts/ttf/* /usr/share/fonts/TTF
sudo cp etc/lightdm/* /etc/lightdm
sudo cp backgrounds/* /usr/share/backgrounds
