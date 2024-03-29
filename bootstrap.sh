#!/bin/bash

ask() {
    # http://djm.me/ask
    local prompt default REPLY

    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read REPLY </dev/tty

        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi

        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac

    done
}

echo "Copying scripts"

sudo ln -s ~/.dotfiles/scripts/* /usr/local/bin/

echo "Updating system..."

sudo apt-get -y update -qq

echo "Install base packages..."

sudo apt-get install -y build-essential stow curl git

if ask "Would you like to apply git config?" Y; then
    source ./setup/git.sh
fi

if ask "Would you like to install node?" Y; then
    source ./setup/node.sh
fi

if ask "Would you like to install fish?" Y; then
    source ./setup/fish.sh
fi

if ask "Would you like to install neovim?" Y; then
    source ./setup/neovim.sh
fi

echo "If you installed fish please remember to run fisher to install plugins"
