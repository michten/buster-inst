#!/bin/sh
#
# Install xorg, KDE and x11 application.
# Made for Debian Buster.
#
# Comment line to disable packages.


x11_pkg='desktop-base xorg'
lspci | grep -i 'VGA.*Intel' && x11_pkg="$x11_pkg xserver-xorg-video-intel"
lspci | grep -i 'VGA.*Thames' && x11_pkg="$x11_pkg xserver-xorg-video-radeon firmware-amd-graphics"
 
x11_pkg="$x11_pkg va-driver-all mesa-utils mesa-utils-extra xserver-xorg-input-libinput xinput xserver-xorg-input-wacom"
x11_pkg="$x11_pkg mesa-opencl-icd mesa-vulkan-drivers" 

x11_pkg="$x11_pkg sddm haveged"
x11_pkg="$x11_pkg kde-plasma-desktop ark plasma-dataengines-addons plasma-pa plasma-runners-addons plasma-wallpapers-addons plasma-widgets-addons polkit-kde-agent-1 sweeper"
x11_pkg="$x11_pkg kwin-x11 kwin-addons"
#x11_pkg="$x11_pkg kde-l10n-pl"
x11_pkg="$x11_pkg fonts-hack-ttf fonts-noto fonts-noto-mono kde-config-gtk-style kde-config-gtk-style-preview kde-config-screenlocker kde-config-sddm khotkeys kde-config-tablet kinfocenter kio-extras kmenuedit kscreen kwrited libpam-kwallet5 powerdevil systemsettings kwalletmanager"
#x11_pkg="$x11_pkg sni-qt"
x11_pkg="$x11_pkg kdegraphics okular-extra-backends okular-backend-odp okular-backend-odt ghostscript kdegraphics-thumbnailers svgpart"
x11_pkg="$x11_pkg qtcurve gtk3-engines-breeze adwaita-qt dmz-cursor-theme sddm-theme-debian-breeze menulibre" 
x11_pkg="$x11_pkg fonts-noto-unhinted fonts-noto-cjk ttf-dejavu gsfonts" 
x11_pkg="$x11_pkg plasma-applet-redshift-control plasma-nm plasma-vault kdeconnect kup-backup print-manager psensor"
x11_pkg="$x11_pkg kde-zeroconf kde-config-cddb" 
#x11_pkg="$x11_pkg bluedevil"
x11_pkg="$x11_pkg konsole rxvt-unicode"

x11_pkg="$x11_pkg gparted k4dirstat krusader" 
x11_pkg="$x11_pkg gnome-disk-utility udisks2-btrfs udisks2-lvm2 libblockdev-crypto2 dosfstools exfat-utils f2fs-tools" 

x11_pkg="$x11_pkg kwrite gnome-calculator fbreader k3b dvd+rw-tools growisofs libk3b7-extracodecs vcdimager k3b-i18n"
x11_pkg="$x11_pkg libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-math libreoffice-style-breeze libreoffice-l10n-pl" 
x11_pkg="$x11_pkg hunspell hunspell-pl hunspell-en-us mythes-pl mythes-en-us hyphen-pl hyphen-en-us" 
x11_pkg="$x11_pkg emacs-gtk" 

x11_pkg="$x11_pkg gimp gimp-data-extras gimp-gutenprint gimp-lensfun gimp-plugin-registry gimp-texturize gtkam-gimp" 
#x11_pkg="$x11_pkg gimp-ufraw" 
#x11_pkg="$x11_pkg krita krita-l10n" 
#x11_pkg="$x11_pkg inkscape inkscape-open-symbols inkscape-tutorials" 

x11_pkg="$x11_pkg chromium chromium-l10n chromium-sandbox" 
#x11_pkg="$x11_pkg pepperflashplugin-nonfree"
x11_pkg="$x11_pkg firefox firefox-l10n-pl" 
x11_pkg="$x11_pkg firefox-esr firefox-esr-l10n-pl" 
x11_pkg="$x11_pkg fonts-stix fonts-lmodern" 
x11_pkg="$x11_pkg webext-https-everywhere webext-ublock-origin webext-umatrix" 
#x11_pkg="$x11_pkg webext-greasemonkey" 
#x11_pkg="$x11_pkg google-chrome-stable"

x11_pkg="$x11_pkg qbittorrent linssid" 
#x11_pkg="$x11_pkg signal-desktop" 
#x11_pkg="$x11_pkg x2goserver x2goserver-xsession x2godesktopsharing"
#x11_pkg="$x11_pkg samba" 

x11_pkg="$x11_pkg pulseaudio-module-zeroconf libnss-mdns avahi-utils"
x11_pkg="$x11_pkg vlc vlc-plugin-samba vlc-l10n mpv qnapi audacity ffmpeg playerctl" 
#x11_pkg="$x11_pkg kodi" 
x11_pkg="$x11_pkg kpat"
#x11_pkg="$x11_pkg spotify-client" 
x11_pkg="$x11_pkg goldendict goldendict-wordnet"
#x11_pkg="$x11_pkg calibre" 
x11_pkg="$x11_pkg i3 i3-wm xdm fonts-dejavu-core libanyevent-i3-perl libjson-xs-perl dunst i3lock i3status suckless-tools stterm redshift brightnessctl brightness-udev compton hsetroot mousepad"
#x11_pkg="$x11_pkg " 

#echo "$x11_pkg"
aptitude install -y $x11_pkg


## Better idea:
# aptitude install -y $x11_pkg \
# $category_graphs \
# $category_music \
# $some_category


#################################################
# goldendict (autoconf?conf cp?, SŁOWNIKI cp z ./linux&settings ) 
# anki
#################################################

###### rvgl:
# https://rvgl.re-volt.io/
# aptitude install libsdl2-2.0-0 libsdl2-image-2.0-0 libopenal1 libenet7 libunistring0 libvorbisfile3 libflac8 libmpg123-0

###### Tato:
# 	VirtualBox from debian repo:
#virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso virtualbox-guest-utils virtualbox-qt virtualbox-guest-x11

#cups printer-driver-gutenprint printer-driver-cups-pdf printer-driver-postscript-hp foomatic-db hplip hplip-gui
#sane-utils unpaper skanlite

#rawtherapy darktable digikam blender
#ginkgocadx medcon
# wine

###### Magda:
# wine
# sims4
#makehuman sweethome3d sweethome3d-furniture sweethome3d-furniture-nonfree sweethome3d-textures-editor sweethome3d-furniture-editor

###### Mama:
# vnc
# radeon, vga_switch

###### misc
# synergy
# minuet minuet-data

###
# virt-manager aqemu qemuctl qemu-system-gui
# qemu-kvm libvirt-clients libvirt-daemon-system virt-manager gir1.2-spiceclientglib-2.0 gir1.2-spiceclientgtk-3.0

### pa over network
#pulseaudio-module-zeroconf libnss-mdns avahi-utils

### OCR (no png, libpng16-16 1.6.36-5 has bug, install >=1.6.36-6)
#tesseract-ocr tesseract-ocr-pol unpaper
