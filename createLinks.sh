#!/bin/bash

# get current dir
DOTDIR=`pwd`

# go to home dir
cd

# remove files if they exist
rm -f .bash_aliases .bashrc .screenrc .vimrc

# create symlinks
ln -s "$DOTDIR/bash_aliases" .bash_aliases
ln -s "$DOTDIR/bashrc" .bashrc
ln -s "$DOTDIR/screenrc" .screenrc
ln -s "$DOTDIR/vimrc" .vimrc
