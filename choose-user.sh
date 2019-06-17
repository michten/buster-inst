#!/bin/bash
#
#
#
#

user_uid=1000
file_passwd=${1:-'/etc/passwd'}


user_path=$(awk -F':' '$3 == "'"$user_uid"'" {print $6}' "$file_passwd")
if [ -z "$user_path" ]; then
	echo '###########################'
	echo '#### No user with uid=1000. Choose from users with home dir in /home/ path:'
	awk -F':' '$6 ~ /\/home\/.+/ {print "uid="$3"("$1"), path="$6}' "$file_passwd"
	#grep '/home/.\+' "$file_passwd" | awk -F':' '{print "uid="$3"("$1"), path="$6}'
	
	uid_list=$(awk -F':' '$6 ~ /\/home\/.+/ {print $3}' ORS="|" "$file_passwd" | sed 's/|$//')
	while ! [[ "$user_uid" =~ ($uid_list) ]]; do
		echo '#### Enter choosen uid:'
		read -r user_uid
	done

	user_path=$(awk -F':' '$3 == "'"$user_uid"'" {print $6}' "$file_passwd")
fi 


echo "$user_uid"
echo "$user_path"
