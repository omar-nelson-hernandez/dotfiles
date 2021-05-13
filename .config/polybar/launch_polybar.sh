#!/usr/bin/env bash

killall -q polybar

# Wait until the process quits
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for SCREEN in $(xrandr | grep connected | grep -v dis | awk '{print $1}');
do
  PRIM=$(xrandr | grep ${SCREEN} | grep primary)
  MONITOR=${SCREEN} PRIMARY=${PRIM} polybar top 2>&1 | tee -a /tmp/polybar-top-${SCREEN}.log & disown
  MONITOR=${SCREEN} PRIMARY=${PRIM} polybar bottom 2>&1 | tee -a /tmp/polybar-bottom-${SCREEN}.log & disown
done
