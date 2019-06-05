#!/bin/bash

# Install yay
sudo pacman -S yay

# Install zsh
sudo pacman -S zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install golang
sudo pacman -S go

# Install node.js 
sudo pacman -S nodejs npm yarn

# Install python tools
sudo pip install autopep8 flake8

# Install latex
sudo pacman -S texlive-most

# Install zathura
sudo pacman -S zathura

# Install vifm
sudo pacman -S vifm

# Install docker
sudo pacman -S docker docker-compose

# Install chrome
sudo pacman -S chromium

# Install other utilities
sudo pacman -S zip unzip xclip ffmpeg cloc
