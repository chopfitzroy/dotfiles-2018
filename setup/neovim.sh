#!/bin/bash

# Install https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get -y update -qq
sudo apt-get install -y python-dev python-pip python3-dev python3-pip neovim
sudo snap install rg --classic

# Set as default editor
#sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/xi 60
#sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/xi 60
#sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/xi 60

# Install plugins
pip install neovim
sudo -H pip3 install neovim
#neovim-remote

# Create config directories
mkdir -p ~/.config/nvim/backups ~/.config/nvim/swaps ~/.config/nvim/undo ~/.config/nvim/colors

# Link config
stow nvim

# Generate theme
# @TODO this will not always work until sourcing ~/.node_modules in node.sh is resolved
theme solarized

