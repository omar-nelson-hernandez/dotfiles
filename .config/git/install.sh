#!/usr/bin/env bash
echo "Installing git config"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

ln -s ${SCRIPTPATH}/gitignore ~/.gitignore
git config --global core.excludeFile '~/.gitignore'

echo "Finished installing git config"
