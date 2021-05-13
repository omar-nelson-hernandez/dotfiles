#!/usr/bin/env bash

echo "Installing tmux config"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
LINK=~/.tmux.conf

ln -s ${SCRIPTPATH}/tmux.conf ~/.tmux.conf

mkdir -p ~/binaries/tmux
ln -s ${SCRIPTPATH}/tmux-create-sessions.sh ~/binaries/tmux/tmux-create-sessions.sh

echo "Installed tmux config"
