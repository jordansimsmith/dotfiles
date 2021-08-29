#!/bin/bash

# Update system
sudo pacman -Syyu

# Install packages
packages=(
  yay
  zsh
  git
  curl
  go
  nodejs
  npm
  yarn
  python
  python-pip
  zathura
  zathura-pdf-poppler
  docker
  docker-compose
  brave-browser
  zip
  unzip
  xclip
  cloc
  wget
  chromium
  redshift
  alacritty
  arc-gtk-theme
)
sudo pacman -S $packages

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
