#!/bin/bash

# Install docker
wget -qO- https://get.docker.com/ | sh

# Add docker user to group
sudo usermod -aG docker ${SUDO_USER}
