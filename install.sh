#!/bin/bash

# Get path to the current script
SCRIPT_NAME="$(basename ${BASH_SOURCE[0]})"
pushd $(dirname ${BASH_SOURCE[0]}) > /dev/null
SCRIPT_DIR=$(pwd)
popd > /dev/null

# link
ln -sf $SCRIPT_DIR/.gitconfig ~/.gitconfig
ln -sf $SCRIPT_DIR ~/.config
