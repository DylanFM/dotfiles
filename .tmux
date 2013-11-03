# remap prefix to Control + a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# force a reload of the config file
unbind r
bind r source-file ~/.tmux

# quick pane cycling
unbind ^A
bind ^A select-pane -t :.+

# report as being able to use 256 colours
set -g terminal-overrides 'xterm:colors=256'

# vim like scrollery
setw -g mode-keys vi
set -g status-keys vi
bind-key -t vi-edit Up   history-up
bind-key -t vi-edit Down history-down
