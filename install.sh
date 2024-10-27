#!/bin/bash

# Get path to the current script
SCRIPT_NAME="$(basename ${BASH_SOURCE[0]})"
pushd $(dirname ${BASH_SOURCE[0]}) > /dev/null
SCRIPT_DIR=$(pwd)
popd > /dev/null

# cleanup current dotfiles
ROOT_DOTFILES=(.gitconfig)
CONFIG_DOTFILES=(nvim)
for r_file in $ROOT_DOTFILES
do
	[ -e $HOME/$r_file ] && rm -- $HOME/$r_file
	ln -s $SCRIPT_DIR/$r_file $HOME/$r_file
done

## .config
mkdir -p ~/.config
for c_file in $CONFIG_DOTFILES
do
	[ -e $HOME/$c_file ] && rm -- $HOME/$c_file
	ln -s $SCRIPT_DIR/$c_file $HOME/.config/$c_file
done
