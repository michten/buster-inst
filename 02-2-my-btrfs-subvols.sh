#!/bin/sh
#
#
# subvols on id=5, not straight in /buster/mnt and then mount there
# because want use mount options.
case $1 in
	unlock) echo Unlocked!;;
	*) echo 'Warning. Read the script before.'; exit 255;;
esac

if findmnt -t btrfs -T / -o OPTIONS -n | grep -Ew 'subvol=/.+'; then 
	echo 'Debian is installed in subvolume.'
	echo 'Apply setup: creating additional subvolumens and add fstab entries'
elif findmnt -t btrfs -T / -o OPTIONS -n | grep -w 'subvolid=5'; then
	echo 'Debian not installed in subvol. Unsupported configuration. Exit'
	exit 1
else
	echo 'Debian is not installed on btrfs filesystem. Exit.'
	exit 2
fi


#TODO: mount id5 in existed dir
# btrfs_id5_mount_path='/media/btrfs_subvolid5_tmp/'
# btrfs_partition=$(findmnt -t btrfs -T / -o SOURCE -n | sed -r 's|\[[^\[]+\]$||')
# mkdir -p $btrfs_id5_mount_path
# mount -o subvolid=5 $btrfs_partition $btrfs_id5_mount_path	


#TODO: if no user 1000 then find users with home in /etc/passwd and prompt to choose
# 
#username= uid 1000 or /home/.+ from /etc/passwd to choose

username=$(awk -F':' '$3 == "1000" {print $1}' /etc/passwd)
if [ -z $username ]; then
	users with /home/dir in passwd
fi 


# Prepare folder herarchy for subvols on id=5
#
# mkdir	$btrfs_id5_mount_path/home_dirs
# mkdir	$btrfs_id5_mount_path/snapshots
# mkdir -p $btrfs_id5_mount_path/multimedia


# Create btrfs subvols
#
# btrfs subvol create /media/btrfs_sdXX_subvol5
for s in $subvols_names; do 
	btrfs subvol create "$btrfs_id5_mount_path$s"
done



# Prepare mount points folder herarchy in /buster/mnt/
#

# Fstab entries
# options ro,defaults,noexec,nodev?,subvol=
############################################################################

# zmienne do setup_table

#
# <subvolume>	<my>	<mount point>	<additional-options> <nodatacow>
setup_table="
/home_dirs/buster-mich   /home/mich   defaults,noexec 0
/dokumenty/doc
/dokumenty/duze-doc
/nodatacow/

"

username=$(awk -F: '$3 == 1000 {print $1}' /etc/passwd)


# btrfs subvols & fstab entries matrix
#
#<subvolpath id=5 relative>	<mount points>		<options>				<nodatacow>
declare -a st=(
"/dokumenty			0  			0  					0"
"/dokumenty/doc			/mnt/dokumeny/doc  	ro,subvol=doc  				0"
"/home_dirs/buster-$username	/home/$username  	noexec,subvol=buster-$username  	0"
"/nodatacow/  			/mnt/  			noexec  				1"
)

############################################################################


#### main:
for subvol_item in ${setup_table}; do
	#funkcje: po wierszach

done

temporary mount points

make subvol parent dir 	(dirname)
		
make btrfs subvol 	($1 path)
	ownership, permissions, nodatacow
make mountpoint dir
	ownership, permissions
add fstab entries
	dev as /
	mount points $2, options $3, rest 0 0

# At the end make fstab great again
# column -t /etc/fstab-bak | sed -e '/^#/ s/\s\+/ /g' > /etc/fstab

echo 'Ostatnia linia. Test'
