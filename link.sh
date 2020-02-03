#!/bin/bash

# Link dotfiles to home directory
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/coc.vim ~/.vim/coc.vim
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/config/i3/config ~/.config/i3/config
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/config/zathura/zathurarc ~/.config/zathura/zathurarc
ln -sf $(pwd)/config/mimeapps.list ~/.config/mimeapps.list
