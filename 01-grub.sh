#!/bin/sh
# Grub config
#
# Best would be to modify line if exist with my value,
# otherwise add such line, but not at end of file.
# TODO: backup files
# TODO: Add password, block access

grub_path='/etc/default/grub'

grep 'P8H67-M' /var/log/messages && asus_thermal_sensor='acpi_enforce_resources=lax '  	#Or grep 'P8H67-M' /sys/devices/virtual/dmi/id/board_name
lspci | grep -i 'VGA.*Intel' && intel_gpu_grub='i915.fastboot=1 '
lscpu | grep -i 'Intel.*Core' && intel_vt_grub='intel_iommu=on intel_iommu=igfx_off '
lspci | grep -i 'Non-Volatile memory controller' && nvme_m2='pcie_aspm=force pcie_aspm.policy=powersupersave'
grub_commandline="${asus_thermal_sensor}${intel_gpu_grub}${intel_vt_grub}${nvme_m2}"

#res_xrandr=$(xrandr | grep -F '*' | awk '{print $1}')  # doesn't work: root can't open display
#resolution=${res_xrandr:-1024x768}

### Add grub_timeout=hidden, 1 sec hidden time out
sed -i 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=1/' "$grub_path"

grep 'GRUB_TIMEOUT_STYLE=hidden' "$grub_path" || sed -i "/GRUB_TIMEOUT=/a GRUB_TIMEOUT_STYLE=hidden" "$grub_path"

sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="'"$grub_commandline"'"/' "$grub_path"

sed -i "s/.*GRUB_GFXMODE=.*/GRUB_GFXMODE=auto/" "$grub_path"

### update-grub - update for fedora/centos too
grub-mkconfig -o /boot/grub/grub.cfg

