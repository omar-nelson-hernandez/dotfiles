#!/usr/bin/env bash

echo "Installing screenshot config"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/binaries/screenshot
ln -s ${SCRIPTPATH}/screenshot.sh ~/binaries/screenshot/screenshot.sh

echo "Installed screenshot config"
