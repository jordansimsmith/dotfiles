#!/bin/bash

# Update system
sudo pacman -Syyu

# Install oh-my-zsh dependencies
sudo pacman -S zsh curl git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install packages
packages=(
  yay
  go
  nodejs
  npm
  yarn
  python
  python-pip
  texlive-most
  zathura
  zathura-pdf-poppler
  docker
  docker-compose
  chromium
  zip
  unzip
  xclip
  cloc
  wget
  chromium
  redshift
  alacritty
)
sudo pacman -S $packages
