#!/bin/bash -f
current_windows_index=`tmux list-windows -F '#I@#F' | grep '*' | cut -f 1 -d '@'`
for windows_index in `tmux list-window -F \#I`
do
    if [ $windows_index -gt $current_windows_index ]; then
        tmux kill-window -t $windows_index
    fi
done
