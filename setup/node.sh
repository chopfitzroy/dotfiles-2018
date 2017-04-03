#!/bin/bash

# Create global node_modules directory
mkdir -p ~/.node_modules

# Set default global direcotry
stow node

# Install node
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# Yarn key
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Install yarn
sudo apt-get -y update -qq
sudo apt-get install -y yarn

# Install globals
npm install -g np diff-so-fancy base16-builder tern
