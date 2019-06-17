#!/bin/sh
# Grub config
#
# Best would be to modify line if exist with my value,
# otherwise add such line, but not at end of file.
# TODO: Add password, block access

grub_path='/etc/default/grub'

lspci | grep -i 'VGA.*Intel' && intel_gpu_grub='i915.fastboot=1 '
lscpu | grep -i 'Intel.*Core' && intel_vt_grub='intel_iommu=on intel_iommu=igfx_off'
grub_commandline="${intel_gpu_grub}${intel_vt_grub}"

#res_xrandr=$(xrandr | grep -F '*' | awk '{print $1}')  # doesn't work: root can't open display
#resolution=${res_xrandr:-1024x768}

### Add grub_timeout=hidden, 1 sec hidden time out
sed -i 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=1/' "$grub_path"

grep 'GRUB_TIMEOUT_STYLE=hidden' "$grub_path" || sed -i "/GRUB_TIMEOUT=/a GRUB_TIMEOUT_STYLE=hidden" "$grub_path"

sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="'"$grub_commandline"'"/' "$grub_path"

sed -i "s/.*GRUB_GFXMODE=.*/GRUB_GFXMODE=auto/" "$grub_path"

### update-grub - update for fedora/centos too
grub-mkconfig -o /boot/grub/grub.cfg

