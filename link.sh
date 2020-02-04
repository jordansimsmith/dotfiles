#!/bin/bash

# Link dotfiles to home directory
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/vim/coc.vim ~/.vim/coc.vim
ln -sf $(pwd)/vim/coc-settings.json ~/.vim/coc-settings.json
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/config/i3/config ~/.config/i3/config
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/config/zathura/zathurarc ~/.config/zathura/zathurarc
ln -sf $(pwd)/config/mimeapps.list ~/.config/mimeapps.list

sudo ln -sf $(pwd)/fonts/DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono.ttf \
  /usr/share/fonts/TTF/DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono.ttf 
