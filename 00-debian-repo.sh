#!/bin/bash
# Set default release, no recommends, additional package repos.

debian_release=${1:-bullseye} #stretch or stable or buster or testing
case $debian_release in
	bullseye) echo 'OK. Set repo to Bullseye';;
	testing) debian_release=testing; echo 'Testing repo.';;
	*) echo 'Wrong Debian release name! Please choose bullseye(default) or testing.'; exit 1;;
esac

sourceslistd_dir='/etc/apt/sources.list.d/'
aptconfd_dir='/etc/apt/apt.conf.d/'
pindir='/etc/apt/preferences.d/'

mkdir -p "$sourceslistd_dir"
mkdir -p "$aptconfd_dir"
mkdir -p "$pindir"

echo 'APT::Default-Release "'"$debian_release"'";' > "$aptconfd_dir"00"$debian_release"
echo 'APT::Install-Recommends "0";' > "$aptconfd_dir"80noRecommends
sed "s/DEBIAN_RELEASE/$debian_release/" 00_sources-list > /etc/apt/sources.list
# TODO:(?) redirect not to sources.list, and make cp to sources.list with backup

apt-get update && apt-get -y full-upgrade

###### Repo chrome, opera, spotify, x2go, virtualbox, wine, syncthing
apt-get -y install apt-transport-https ca-certificates curl wget gnupg software-properties-common \
aptitude bash-completion

#   Following may require change release name in future
wget -qO- https://www.virtualbox.org/download/oracle_vbox_2016.asc | apt-key add -
echo 'deb http://download.virtualbox.org/virtualbox/debian buster contrib' > "$sourceslistd_dir"vbox.list

#apt-key adv --keyserver pgp.mit.edu --recv-keys A295D773307D25A33AE72F2F64CD5FA175348F84
#echo 'deb https://dl.ring.cx/ring-nightly/debian_9/ ring main' > "$sourceslistd_dir"ring-nightly-main.list
#echo -e 'Package: *\nPin: release o=ring\nPin-Priority: 991' > "$pindir"ring.pref

curl -s https://updates.signal.org/desktop/apt/keys.asc | apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" > "$sourceslistd_dir"signal.list

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian buster stable edge"  > "$sourceslistd_dir"docker.list
#echo "deb [arch=amd64] https://download.docker.com/linux/debian $debian_release stable edge"  > "$sourceslistd_dir"docker.list

wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
echo "deb https://dl.winehq.org/wine-builds/debian/ $debian_release main" > "$sourceslistd_dir"winehq.list
echo -e 'Package: *\nPin: release o=dl.winehq.org\nPin-Priority: 991' > "$pindir"winehq.pref

#apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E
#echo "deb http://packages.x2go.org/debian $debian_release main" > "$sourceslistd_dir"x2go.list
#echo -e 'Package: *\nPin: release o=X2Go\nPin-Priority: 991' > "$pindir"x2go.pref
#Apt Pinning doesn't work, don't know why. In Syncthing repo below is ok...

#   Application version based
curl -s https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > "$sourceslistd_dir"google-chrome.list

curl -s https://download.spotify.com/debian/pubkey.gpg | apt-key add -
echo 'deb http://repository.spotify.com stable non-free' > "$sourceslistd_dir"spotify.list

curl -s https://syncthing.net/release-key.txt | apt-key add -
echo 'deb https://apt.syncthing.net/ syncthing stable' > "$sourceslistd_dir"syncthing.list
echo -e 'Package: *\nPin: release o=Syncthing\nPin-Priority: 991' > "$pindir"syncthing.pref

apt-get update #&& \
#apt-get -y install x2go-keyring
####################################################
