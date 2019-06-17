#!/bin/sh
#
# Enable TCP BBR congestion control in kernel and make it persistent after reboot
#

if [ "$(grep 'CONFIG_TCP_CONG_BBR' /boot/config-$(uname -r))" = 'CONFIG_TCP_CONG_BBR=m' ] \
&& [ "$(grep 'CONFIG_NET_SCH_FQ' /boot/config-$(uname -r))" = 'CONFIG_NET_SCH_FQ_CODEL=m
CONFIG_NET_SCH_FQ=m' ] \
&& [ "$(grep -E 'CONFIG_TCP_CONG_BBR|CONFIG_NET_SCH_FQ' /boot/config-$(uname -r))" = 'CONFIG_TCP_CONG_BBR=m
CONFIG_NET_SCH_FQ_CODEL=m
CONFIG_NET_SCH_FQ=m' ];
then
	echo 'net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr' > /etc/sysctl.d/10-tcp-bbr.conf
	sysctl --system
	
	#check:
	if [ "$(sysctl net.core.default_qdisc)" = 'net.core.default_qdisc = fq' ] \
	&& [ "$(sysctl net.ipv4.tcp_congestion_control)" = 'net.ipv4.tcp_congestion_control = bbr' ]; 
	then
		echo 'TCP BBR congestion control is ENABLED!'
	else
		echo 'TCP BBR dont work...'
	fi

else
	echo 'Kernel may not support TCP BBR congestion control'
fi
