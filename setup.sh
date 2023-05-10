#!/bin/bash

# Selection
echo "Test Selektion"

# Creating Folders
echo "Creating Folders..."
dir_dotfiles=~/Dotfiles
dir_keyrings=~/.keyrings
mkdir -p ~/Downloads $dir_dotfiles $dir_keyrings

# # Copying Dotfiles
# echo "Copying Dotfiles into '~/Dotfiles'..."
# 
# # Downloading Keyrings
# echo "Downloading Keyrings..."
# wget https://gitlab.com/volian/volian-archive/uploads/b20bd8237a9b20f5a82f461ed0704ad4/volian-archive-keyring_0.1.0_all.deb --output-document=~/Downloads/volian-archive-keyring_0.1.0_all.deb
# wget https://gitlab.com/volian/volian-archive/uploads/d6b3a118de5384a0be2462905f7e4301/volian-archive-nala_0.1.0_all.deb --output-document=volian-archive-nala_0.1.0_all.deb
# 
# # Installing Keyrings
# echo "Installing Keyrings..."
# apt install ~/Downloads/volian-archive*.deb
# 
# # Installing Software
# apt update
# apt install nala
# 
# nala install xorg lightdm awesome
# 
# # Linking Dotfiles
# 
# 