#!/usr/bin/env bash

echo "Installing i3 config"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/.config/i3
ln -s ${SCRIPTPATH}/config ~/.config/i3/config

echo "Installed i3 config"
