#!/usr/bin/env bash

if [ $(id -u) != "0" ]; then
  echo "Please run this script as root"
  exit 1
fi

apt-get update
apt-get -y install curl
apt-get -y install pulseaudio
apt-get -y install pulseaudio-utils
apt-get -y install pavucontrol
