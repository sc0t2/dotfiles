#!/bin/bash

# PURPOSE: create symlinks of dotfiles to home directory
# AUTHOR:  Scott Myers
# TODO: backup existing dotfiles

HOMEDIR=$(echo $HOME)
CURDIR=$(pwd)

# back up existing dotfiles
rm ~/.bash* 2>/dev/null

# for each file, make a symlink to it in the home directory
for i in .bash*; do
  ln --symbolic -t ~ "$i"
done
