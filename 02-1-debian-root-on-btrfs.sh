#!/bin/sh
#
# Convert Debian Buster btrfs installation to subvol.
# As of Buster Alpha 5, installer doesn't support btrfs subvolume(only subvolID=5),
# and doesn't support /boot on encrypted partition(/boot on btrfs in LUKS).
# The desired setup of this script is:
#	- debian root in /buster subvolume
#	TODO: - system drive with two partition: EFI and LUKS with btrfs.
#					(no boot partition, /boot on btrfs)
#	TODO: - system root snaps grub detection
#
# Info: In debian running from subvol update-grub will automatically
# add 'rootflags=subvol=nameofsubvol' to kernel parameters.
# To undo, you need to remove 'rootflags=subvol=nameofsubvol' from
# kernel parameters in /boot/grub/grub.cfg and then restart system without updated-grub.
#
# You need to read this before run:
case $1 in
	unlock) echo Unlocked!;;
	*) echo 'Warning. Read the script before.'; exit 255;;
esac


### Edit variable below if you want: choose debian subvolume path and name(relative to btrfs subvolid=5).
subvol_full_path='/buster'
########################
source_path='/'
grubpath='/etc/default/grub'
fstabpath='/etc/fstab'
fstab_tmp_path='/etc/fstab-btrfs-tmp'
subvol_dir_hierarchy=$(dirname $subvol_full_path)
#subvol_name=$(basename $subvol_full_path)


### Tests
# Or: awk '$2 == "/" {print $4}' /proc/mounts | grep -w 'subvol=/'
if findmnt -t btrfs -T / -o OPTIONS -n | grep -w 'subvolid=5'; then
	echo 'Debian on btrfs volume root directory (subvolid=5,subvol=/).'
	echo "Moving installation to $subvol_full_path subvol..."
elif findmnt -t btrfs -T / -o OPTIONS -n | grep -Ew 'subvol=/.+'; then 
	echo 'Debian is installed on btrfs subvol already. Exit.'
	exit 1
else
	echo 'Debian is not installed on btrfs filesystem. Exit.'
	exit 2
fi


### Edit grub:
# sed: in the next to last [^\s]+ or \S+ it looks like both are working.
grub_flags=$(sed -rn -e '/^GRUB_CMDLINE_LINUX_DEFAULT/ {s/^GRUB_CMDLINE_LINUX_DEFAULT="//;s/"$//;p}' -e 's/rootflags=subvol=[^\s]+(\s|$)//g' -e 's/\s*$//' $grubpath)
grub_flags="$grub_flags rootflags=subvol=$subvol_full_path"
sed -i.btrfs-bak 's|^GRUB_CMDLINE_LINUX_DEFAULT=.*|GRUB_CMDLINE_LINUX_DEFAULT="'"$grub_flags"'"|' $grubpath


### Edit fstab
fstab_mount_options=$(awk '$2 == "/" {print $4}' "$fstabpath" | sed -r 's/,?subvol=[^,]+,?//g')
fstab_mount_options="$fstab_mount_options,subvol=$subvol_full_path"
awk '$2=="/" {$4="'"$fstab_mount_options"'"}; {print}' $fstabpath > $fstab_tmp_path && \
mv --backup=t $fstab_tmp_path $fstabpath


### Make snap of /
if [ ! -d "$subvol_dir_hierarchy" ]; then
	mkdir -p "$subvol_dir_hierarchy"
fi
if [ ! -d "$subvol_full_path" ]; then
	btrfs subvolume snapshot "$source_path" "$subvol_full_path"
fi


# no update-grub for better compability
grub-mkconfig -o /boot/grub/grub.cfg


echo 'Done! You should reboot your system now.'
echo 'If after reboot system runs from subvol, debian files in $source_path can be deleted.'
