#!/bin/bash

# Install
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get -y update -qq
sudo apt-get install -y neovim

# Set as default editor
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/xi 60
sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/xi 60
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/xi 60

# Install plugins
sudo -H pip3 install neovim neovim-remote

# Create config directories
mkdir -p ~/.config/nvim/backups ~/.config/nvim/swaps ~/.config/nvim/undo ~/.config/nvim/colors

# Link config
stow nvim

# Install plugin manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
nvim +PlugInstall +qall
