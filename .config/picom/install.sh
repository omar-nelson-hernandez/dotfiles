#!/usr/bin/env bash

echo "Installing picom conf"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/.config/picom
ln -s ${SCRIPTPATH}/picom.conf ~/.config/picom/picom.conf

echo "Installed picom conf"
