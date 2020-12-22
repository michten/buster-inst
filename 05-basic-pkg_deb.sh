#!/bin/sh
#
# Install hardware dependent packages and some usefull non-x11 application.
# Made for Debian Buster.
#
# Comment line to disable packages.


# Hardware
hw_pkg='firmware-linux-free firmware-misc-nonfree'
# CPU microcode
if lscpu | grep -i 'AMD'; then
	hw_pkg="$hw_pkg amd64-microcode";
elif lscpu | grep -i 'Intel'; then
	hw_pkg="$hw_pkg intel-microcode";
else echo 'Unknown CPU';
fi

# Network firmware
lspci | grep -i 'Network.*Intel' && hw_pkg="$hw_pkg firmware-iwlwifi"
lspci | grep -i 'Network.*Atheros' && hw_pkg="$hw_pkg firmware-atheros"
lspci | grep -i '\(Network\|Ethernet\).*Realtek' && hw_pkg="$hw_pkg firmware-realtek"

#echo "$hw_pkg"
aptitude install -y $hw_pkg


# Applications
	  base_pkg='linux-headers-amd64 build-essential irqbalance'

base_pkg="$base_pkg bash-completion tmux aptitude lsb-release gnupg apt-transport-https htop lnav mc rsync sysbench sysstat man-db info"
base_pkg="$base_pkg glances python3-bottle python3-docker python3-influxdb python3-matplotlib python3-netifaces python3-pysnmp4 python3-pystache"

base_pkg="$base_pkg linux-cpupower powertop lm-sensors vbetool ddccontrol edid-decode dmidecode usb-modeswitch rfkill"
base_pkg="$base_pkg smartmontools hdparm hddtemp fdisk gdisk gpart testdisk gddrescue syslinux-utils nvme-cli"

base_pkg="$base_pkg acpi acpi-fakekey upower"

base_pkg="$base_pkg network-manager crda dnsmasq-base modemmanager ppp libteam-utils network-manager-openvpn"
base_pkg="$base_pkg ufw fail2ban wget curl iperf3 mtr-tiny traceroute whois dnsutils telnet tftp nmap netdiscover ansible netcat"
base_pkg="$base_pkg openssh-server openssh-client"

base_pkg="$base_pkg file git debconf-utils aufs-tools"

base_pkg="$base_pkg p7zip-full p7zip-rar unrar"
base_pkg="$base_pkg alsa-utils lame flac opus-tools sox youtube-dl aom-tools"
base_pkg="$base_pkg python-pip python-all-dev python-wheel"
base_pkg="$base_pkg bc"
#base_pkg="$base_pkg unattended-upgrade net-tools laptop-mode-tools"
#base_pkg="$base_pkg qemu-system-x86 qemu-guest-agent qemu-utils libvirt-daemon-system"
# adb and fastboot now from sid repo
base_pkg="$base_pkg adb fastboot heimdall-flash"
#base_pkg="$base_pkg "

#echo "$base_pkg"
#apt-get install -y $base_pkg
aptitude install -y $base_pkg

