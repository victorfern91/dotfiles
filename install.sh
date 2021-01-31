#!/bin/bash

echo "Starting dotfiles install process"

cd ~
mkdir configs
cd configs

git clone git@github.com/victorfern91:dotfiles.git
# copy bash files to user root dir
#cp .bash_* ~

# copy git configurations
#cp .gitconfig ~

#source ~/.bash_profile

