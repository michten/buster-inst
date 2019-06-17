#!/bin/sh

case $(cat /etc/hostname) in
	magdzior) userVPSport=19002; user='magda';;
	debdell) userVPSport=19003; user='mich';;
	gosik) userVPSport=19004; user='małgorzata';;
	docdeb) userVPSport=19005; user='doc';;
	*) echo 'Unknown PC... Exit'; exit;;
esac

if [ -d /home/$user ]; then
	user_path="/home/$user/"
	echo "$user_path"
else
	echo "Can't find user path. Exit"; exit
fi

# this key, and server are no longer used. I left this to remember.
echo '-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACAG1RxLwuGpPp8Kgd9l0GFTwNfNXXfK0bHY5u18bo0UhAAAAJAIDDV6CAw1
egAAAAtzc2gtZWQyNTUxOQAAACAG1RxLwuGpPp8Kgd9l0GFTwNfNXXfK0bHY5u18bo0UhA
AAAEBWACV874RLwCuU6UCqkWyO1uaEkswJOk/JG4PcL0OB9wbVHEvC4ak+nwqB32XQYVPA
181dd8rRsdjm7XxujRSEAAAADG1pY2hAZGViZGVsbAE=
-----END OPENSSH PRIVATE KEY-----' > "$user_path.ssh/conn-tmp"

cfg="$user_path.ssh/config"

chmod 600 "$cfg"

echo "
Host zserwis
	HostName 54.37.137.182
	Port 19000
	User conn
	IdentityFile $user_path.ssh/conn-tmp
	RemoteForward 54.37.137.182:$userVPSport localhost:19900" >> "$cfg"

chmod 400 "$user_path.ssh/conn-tmp"
chmod 400 "$cfg"
ssh zserwis -fN
echo 'OK'
