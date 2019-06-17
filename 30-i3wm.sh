#!/bin/bash
#
#
# 

# Set proper home dir or ~

# i3 config to ~/.config/i3/config

# redshift config ro ~/.config/redshift/redshift

# pactl list short sinks...   pacmd set-default-sink


mkdir -p /etc/X11/xorg.conf.d/
echo '\ 
Section "Device"
  Identifier  "Intel Graphics"
  Driver      "intel"
  Option      "TearFree" "true"
EndSection' > /etc/X11/xorg.conf.d/20-intel.conf

echo '\ 
Xcursor.theme: DMZ-White
Xcursor.size: 32' > ~/.Xresources

sed -i '/^gtk-cursor-theme-name=/ d' ~/.config/gtk-3.0/settings.ini

update-alternatives --set x-cursor-theme /usr/share/icons/DMZ-White/cursor.theme

update-alternatives --set editor /usr/bin/vim.nox

update-alternatives --set x-terminal-emulator /usr/bin/urxvt
update-alternatives --set x-terminal-emulator /usr/bin/konsole

update-alternatives --set x-window-manager /usr/bin/i3

update-alternatives --set x-www-browser /usr/bin/firefox-esr
update-alternatives --set x-www-browser /usr/bin/firefox
