#!/bin/sh

u_min="$1"
#u_min="$(grep '^UID_MIN' /etc/login.defs | awk '{print $2}')"
echo "$u_min"

user="$(awk -F':' '{ if ($3 ~ /\y'"$u_min"'\y/) print $1}' /etc/passwd)"
echo "$user"
dir_user="$(awk -F':' '{ if ($3 ~ /\y'"$u_min"'\y/) print $6}' /etc/passwd)"
echo "$dir_user"

#!user can not be in /home/, and it will be ok, additionl check
#if [   ]


if [ ! -d "$dir_user" ]; then
	unset "user"
	echo 'User home dir doesnt exist'
	echo "In loop, before user"
	echo "$user"
else
	echo 'OK'
fi
