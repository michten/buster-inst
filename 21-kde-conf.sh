#!/bin/sh
# Configuration KDE Plasma

# Disable hibernation in whole system
systemctl mask hibernate.target

# KDE keyboard shortcuts


# Default cursor thame
update-alternatives --set x-cursor-theme /usr/share/icons/DMZ-White/cursor.theme
