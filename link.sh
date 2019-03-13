#!/bin/bash

# Link dotfiles to home directory
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/i3/config ~/.i3/config
ln -sf $(pwd)/gitconfig ~/.gitconfig
