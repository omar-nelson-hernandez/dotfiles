#!/usr/bin/env bash

if [ $1 == kill ]
then
  tmux kill-session -t $2
fi

SESSION=${1:?No session specified}
SESSIONEXISTS=$(tmux list-sessions | grep ${SESSION})

if [ "${SESSIONEXISTS}" != "" ]
then
  echo "Session ${SESSION} already exists"
  echo "${SESSIONEXISTS}"
fi

case ${SESSION} in

  PYDEV)
    tmux new-session -d -s ${SESSION}

    tmux rename-window -t 0 'ROOT'
    tmux send-keys -t 'ROOT' 'su -'

    tmux new-window -t ${SESSION}:1 -n 'NOTEBOOK'
    tmux send-keys -t 'NOTEBOOK' 'cd /storage/notebook' C-m 'nvim' C-m

    tmux new-window -t ${SESSION}:2 -n 'CODE'
    tmux send-keys -t 'CODE' 'cd ~/coding' C-m 'nvim' C-m

    tmux new-window -t ${SESSION}:3 -n 'EXECUTE'
    tmux send-keys -t 'EXECUTE' 'cd ~/coding' C-m 'ape' C-m

    tmux attach-session -t ${SESSION}:0
    ;;

  GEN)
    tmux new-session -d -s ${SESSION}

    tmux rename-window -t 0 'ROOT'
    tmux send-keys -t 'ROOT' 'su -'

    tmux new-window -t ${SESSION}:1 -n 'NOTEBOOK'
    tmux send-keys -t 'NOTEBOOK' 'cd /storage/notebook' C-m 'nvim' C-m

    tmux new-window -t ${SESSION}:2 -n 'TERM'

    tmux attach-session -t ${SESSION}:0
    ;;

esac
