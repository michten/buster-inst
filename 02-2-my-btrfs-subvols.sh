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


# This sourced script add three variables user_uid, user_name, user_path used later here
. choose-user.sh
# echo "$user_uid"
# echo "$user_name"
# echo "$user_path"


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


# btrfs subvols & fstab entries matrix
#
#<subvolpath id=5 relative>	<mount points>		<options>				<nodatacow=1>  	<subvol=1 or dir=0>
declare -a st=(
"/dokumenty			0  			0  					0  		1"
"/dokumenty/doc			/mnt/dokumeny/doc  	ro,subvol=doc  				0  		1"
"/dokumenty/duze		/mnt/dokumeny/duze  	ro,subvol=duze  			0  		1"
"/home_dirs  			0  			0  					0		0"
"/home_dirs/buster-$user_name	$user_path   		noexec,subvol=buster-$user_name  	0  		1"
"/workdir/  			/mnt/workdir  		defaults,subvol=workdir  		0  		1"
"/nodatacow/  			/mnt/nodatacow  	noexec  				1  		1"
"/home_dirs  			0  			0  					0		0"
)

############################################################################

# funkcja będzie wczytywać kolejne linie, gdy '$5' 0 to tworzy katalog gdy 1 to tworzy subvol, ?kolejna-funkcja?

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
