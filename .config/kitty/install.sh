#!/usr/bin/env bash

echo "Installing kitty config"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/.config/kitty
ln -s ${SCRIPTPATH}/kitty.conf ~/.config/kitty/kitty.conf

echo "Installed kitty config"
