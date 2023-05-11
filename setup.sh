#!/bin/bash

# Selection
echo "Test Selektion"

# Creating Folders
echo "Creating Folders..."
dir_dotfiles=~/Dotfiles
dir_keyrings=~/.keyrings
dir_setup=~/.setup
mkdir -p ~/Downloads $dir_dotfiles $dir_keyrings $dir_setup

# # Copying Dotfiles
# echo "Copying Dotfiles into '~/Dotfiles'..."
# 

# Downloading packages
dpkg-query -s nala &> /dev/null
install_nala=$?
if [ $install_nala -eq 1 ]
	then
	wget https://gitlab.com/volian/volian-archive/uploads/b20bd8237a9b20f5a82f461ed0704ad4/volian-archive-keyring_0.1.0_all.deb --output-document="$dir_setup/volian-archive-keyring_0.1.0_all.deb"
	wget https://gitlab.com/volian/volian-archive/uploads/d6b3a118de5384a0be2462905f7e4301/volian-archive-nala_0.1.0_all.deb --output-document="$dir_setup/volian-archive-nala_0.1.0_all.deb"
	apt install "$dir_setup/volian-archive-nala_0.1.0_all.deb"
	apt update
	apt install nala -y
fi

# Remove SetupDir
rm -r $dir_setup
