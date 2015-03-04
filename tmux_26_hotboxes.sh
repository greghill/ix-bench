#!/bin/sh
tmux new-session -d -s hotboxes -n 'hotbox-11' 'ssh greghill@hotbox-11' 
#tmux new-window -n 'hotbox-2' 'ssh greghill@hotbox-2' 
#tmux new-window -n 'hotbox-3' 'ssh greghill@hotbox-3' 
#tmux new-window -n 'hotbox-4' 'ssh greghill@hotbox-4' 
#tmux new-window -n 'hotbox-5' 'ssh greghill@hotbox-5' 
#tmux new-window -n 'hotbox-6' 'ssh greghill@hotbox-6' 
#tmux new-window -n 'hotbox-7' 'ssh greghill@hotbox-7' 
#tmux new-window -n 'hotbox-8' 'ssh greghill@hotbox-8' 
#tmux new-window -n 'hotbox-9' 'ssh greghill@hotbox-9' 
#tmux new-window -n 'hotbox-10' 'ssh greghill@hotbox-10' 
tmux new-window -n 'hotbox-12' 'ssh greghill@hotbox-12' 
tmux new-window -n 'hotbox-13' 'ssh greghill@hotbox-13' 
tmux new-window -n 'hotbox-14' 'ssh greghill@hotbox-14' 
tmux new-window -n 'hotbox-15' 'ssh greghill@hotbox-15' 
tmux new-window -n 'hotbox-16' 'ssh greghill@hotbox-16' 
tmux new-window -n 'hotbox-17' 'ssh greghill@hotbox-17' 
tmux new-window -n 'hotbox-18' 'ssh greghill@hotbox-18' 
tmux new-window -n 'hotbox-19' 'ssh greghill@hotbox-19' 
tmux new-window -n 'hotbox-20' 'ssh greghill@hotbox-20' 
tmux new-window -n 'hotbox-21' 'ssh greghill@hotbox-21' 
tmux new-window -n 'hotbox-22' 'ssh greghill@hotbox-22' 
tmux new-window -n 'hotbox-23' 'ssh greghill@hotbox-23' 
tmux new-window -n 'hotbox-24' 'ssh greghill@hotbox-24' 
tmux new-window -n 'hotbox-25' 'ssh greghill@hotbox-25' 
tmux new-window -n 'hotbox-26' 'ssh greghill@hotbox-26' 
tmux new-window -n 'hotbox-27' 'ssh greghill@hotbox-27' 
tmux new-window -n 'hotbox-28' 'ssh greghill@hotbox-28' 
tmux new-window -n 'hotbox-29' 'ssh greghill@hotbox-29' 
tmux new-window -n 'hotbox-30' 'ssh greghill@hotbox-30' 
tmux new-window -n 'hotbox-31' 'ssh greghill@hotbox-31' 
tmux new-window -n 'hotbox-32' 'ssh greghill@hotbox-32' 
tmux new-window -n 'hotbox-33' 'ssh greghill@hotbox-33' 
tmux new-window -n 'hotbox-34' 'ssh greghill@hotbox-34' 
tmux new-window -n 'hotbox-35' 'ssh greghill@hotbox-35' 
tmux new-window -n 'hotbox-36' 'ssh greghill@hotbox-36' 
tmux new-window -n 'hotbox-37' 'ssh greghill@hotbox-37' 
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux join-pane -h -s hotboxes:2 -t hotboxes:1
tmux select-layout tiled
tmux select-pane -L
tmux set-window-option synchronize-panes on
tmux -2 attach-session -t hotboxes

