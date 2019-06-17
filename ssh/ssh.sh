#!/bin/bash
sshd_conf='/etc/ssh/sshd_config'

sed -i "s/^#Port 22$/Port 19900/" $sshd_conf
sed -i "s/^#LogLevel INFO$/LogLevel VERBOSE/" $sshd_conf
sed -i "s/^#PermitRootLogin prohibit-password$/PermitRootLogin no/" $sshd_conf
sed -i "s/^#PasswordAuthentication yes$/PasswordAuthentication no/" $sshd_conf

# chck uses(in system inhome) add pub.keys to ~/.ssh/: conn, between, x2go?
#mkdir .ssh
#usr=$(grep -i '1000' /etc/passwd | awk -F: '{print $1}')
usr_pth=$(grep -i '1000' /etc/passwd | awk -F: '{print $6}')
cat dom.pub >> "$usr_pth/.ssh/authorized_keys"

#.ssh/config make serwis( to conn remoteforward + auto open ports on black), between(local)
case $(cat /etc/hostname) in
	docdell) userVPSport=19001;;
	magdzior) userVPSport=19002;;
	gosik) userVPSport=19003;;
esac

#change to file
echo "Host serwis
	HostName 193.70.88.243
	Port 19000
	User conn
	IdentityFile /home/mich/.ssh/black/conn # add file + pth
	RemoteForward 193.70.88.243:$userVPSport localhost:19900" >> "$usr_pth/.ssh/config"
#chmod -R 400 .ssh albo nie wszytkie
systemctl restart ssh
