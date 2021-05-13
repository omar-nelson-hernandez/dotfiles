#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "Downloading polybar-pulseaudio-control"

curl https://raw.githubusercontent.com/marioortizmanero/polybar-pulseaudio-control/c92d7d243f3c6ecb9172c3891dc7e1befd72d49e/pulseaudio-control.bash -o ${SCRIPTPATH}/pulseaudio-control.sh

echo "Adding to ~/bin dir and making executable"

mkdir -p ~/bin
cp ${SCRIPTPATH}/pulseaudio-control.sh ~/bin/pulseaudio-control.sh
chmod u+x ~/bin/pulseaudio-control.sh
