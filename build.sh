#!/usr/bin/env bash
packages=(arch-install-scripts awk dosfstools e2fsprogs erofs-utils findutils gzip libarchive)
for ((a=0;a<8;a++)); do
	[ "$(pacman -Qq | grep ${packages[a]})" ] || sudo pacman --noconfirm -S ${packages[a]}
done
sudo mkarchiso .
sudo rm -rf work
