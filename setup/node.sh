#!/bin/bash

# Create global node_modules directory
mkdir -p ~/.node_modules

# Set default global direcotry
# @TODO I want to set node up here to write source ~/.node_modules to bashrc
# this won't effect anything if user elects to use fish
stow node

# Install node
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install globals
npm install -g diff-so-fancy base16-builder
