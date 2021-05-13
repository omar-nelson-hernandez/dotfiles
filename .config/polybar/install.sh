#!/usr/bin/env bash

echo "Installing polybar configuration"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/.config/polybar
ln -s ${SCRIPTPATH}/config ~/.config/polybar/config

mkdir -p ~/binaries/ticker
curl -o ~/binaries/ticker/ticker.sh https://raw.githubusercontent.com/pstadler/ticker.sh/master/ticker.sh

mkdir -p ~/binaries/polybar-timer
curl -o ~/binaries/polybar-timer/polybar-timer.sh https://raw.githubusercontent.com/jbirnick/polybar-timer/master/polybar-timer.sh

mkdir -p ~/binaries/polybar
ln -s ${SCRIPTPATH}/launch_polybar.sh ~/binaries/polybar/launch_polybar.sh
