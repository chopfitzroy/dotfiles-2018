#!/bin/bash

# Install
sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt-get -y update -qq
sudo apt-get install -y fish

# Link config
stow fish

# Install fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# Make fish default shell
chsh -s /usr/bin/fish
