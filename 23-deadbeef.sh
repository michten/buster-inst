#!/bin/sh
#
# Download and install DeaDBeeF in /opt (not in home due to noexec mount option)
# make menu shortcut and copy config + waveform
# On DeadBeef site is already deb package.
#
# TODO: DeadBeeF conf
# TODO: WaveformSeekbar conf
# TODO: system shortcut

### installer configuration:
install_dir='/opt/deadbeef'
shortcut_dir='/usr/local/bin/'
#deadbeef_link='https://sourceforge.net/projects/deadbeef/files/travis/linux/1.8.0/deadbeef-static_1.8.0-1_x86_64.tar.bz2'
deadbeef_link=$(curl -s http://deadbeef.sourceforge.net/download.html | grep -o 'href="https://sourceforge.net/projects/deadbeef/files/travis/linux/.*/deadbeef-static_.*_x86_64.tar.bz2/download"' | sed -e 's|^href="||' -e 's|/download"$||')
waveform_link=$(curl -s http://deadbeef.sourceforge.net/plugins.html | grep -o 'http://sourceforge.net/projects/deadbeef/files/plugins/x86_64/ddb_waveform_seekbar-.*-x86_64.zip')
mpris_link=$(curl -s http://deadbeef.sourceforge.net/plugins.html | grep -o 'http://sourceforge.net/projects/deadbeef/files/plugins/x86_64/mpris-.*-x86_64.zip')
############################

tmp_dir='/tmp/deadbeef'
unpack_dir="$tmp_dir/unpack"
mkdir -p "$unpack_dir"


# download DeaDBeeF
wget -nc $deadbeef_link -P $tmp_dir &&
tar xvj -f "$tmp_dir/$(basename $deadbeef_link)" -C "$unpack_dir" --no-same-owner --no-same-permissions


# download and install WaveformSeekbar plugin
wget -nc "$waveform_link" -P $tmp_dir &&
7z x "$tmp_dir/$(basename $waveform_link)" -o$tmp_dir &&
# download and install MPRISv2 plugin
wget -nc "$mpris_link" -P $tmp_dir &&
7z x "$tmp_dir/$(basename $mpris_link)" -o$tmp_dir &&
#
mv $tmp_dir/plugins/*.so $unpack_dir/*/plugins/ &&


# remove all locales except en_US
find $unpack_dir/*/locale/ -maxdepth 1 -mindepth 1 -type d \! -name 'en_US' -print0 | xargs -0 rm -r


# install depenedences
aptitude install -y libasound2 libc6 libcairo2 libgcc1 libglib2.0-0 libgtk2.0-0 libjansson4 \
libvorbis0a libvorbisenc2 libvorbisfile3 libogg0 \
libcurl3-gnutls libcurl4 \
libimlib2 \
libmad0 libmpg123-0 \
flac libflac++6v5 \
libwavpack1 \
libsndfile1 \
libcdio-paranoia2 libcddb2 \
ffmpeg \
libx11-6 libdbus-1-3 \
libfaad2 \
libzip4
# yasm

if [ -d $install_dir ]; then
	rm -r $install_dir
	rm $shortcut_dir/deadbeef
fi

mv $unpack_dir/* "$install_dir"
ln -s $install_dir/deadbeef $shortcut_dir
rm -r "$tmp_dir"
