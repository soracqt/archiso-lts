#!/usr/bin/env bash
sudo bash -c '
packages=(arch-install-scripts awk dosfstools e2fsprogs erofs-utils findutils gzip libarchive)
for ((a=0;a<8;a++)); do
	[ "$(pacman -Qq | grep ${packages[a]})" ] || pacman --noconfirm -S ${packages[a]}
done
mkarchiso .
rm -rf work
'
