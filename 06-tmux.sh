#!/bin/sh
# install/check instalation tmux + conf (add, edit /etc/tmux.conf)

aptitude install -y tmux
#apt-get install -y tmux

conf_path=/etc/tmux.conf
cp --backup=numbered $conf_path $conf_path.bak

# Old wierd method:
#grep -x 'set -g prefix `' "$conf_path" || echo 'set -g prefix `' >> "$conf_path"

### CONFIG
echo \
'# zamiana C-b na `
set -g prefix `
unbind C-b
bind ` send-prefix

# indexy od 1
set -g base-index 1
setw -g pane-base-index 1

# natychmiastowy esc
set -s escape-time 0' > $conf_path
