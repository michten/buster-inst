#!/bin/bash

u_min="$1"   #do testów żeby podać swoje
#uid='200000'
user='empty'
dir_user='empty'

#   Tak będzie po testch:
#u_min="$(grep '^UID_MIN' /etc/login.defs | awk '{print $2}')"
echo "u_min poza: $u_min"

find_user () {
	if (awk -F':' '{ print $3 }' /etc/passwd | grep -x "$u_min"); then
		echo "u_min w if: $u_min"
		user="$(awk -F':' '{ if ($3 ~ /\y'"$u_min"'\y/) print $1}' /etc/passwd)"
		echo "user w if: $user"
		dir_user="$(awk -F':' '{ if ($3 ~ /\y'"$u_min"'\y/) print $6}' /etc/passwd)"
		echo "dir_user w if: $dir_user"
	else
		let u_min++
		echo "powiekszony u_min w else: $u_min"
	fi
}

i=0
while [ ! -d "$dir_user" ] && [[ ! "$dir_user" =~ home ]] && [ "$i" -lt 5 ]; do
		echo 'Jestesmy w while'
		find_user
		let i++
done





# to jest dobre
# awk -F':' '{ if ($6 ~ /\yhome\y/ || $7 ~ /\ybash\y/) print}' /etc/passwd
# albo:
# awk -F':' '{ if ($6 ~ /\yhome\y/ && $7 ~ /\ybash\y/) print}' /etc/passwd
