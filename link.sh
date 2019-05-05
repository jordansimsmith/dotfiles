#!/bin/bash

# Link dotfiles to home directory
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/config/i3/config ~/.config/i3/config
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/config/zathura/zathurarc ~/.config/zathura/zathurarc
