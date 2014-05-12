#!/bin/bash

echo "Starting provisioning script."

echo "Installing yaourt."
grep -q '\[archlinuxfr\]' /etc/pacman.conf || printf '\n[archlinuxfr]\nSigLevel = Never\nServer = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf
pacman -Sy --needed --noconfirm yaourt base-devel

echo "Installing fig."
yaourt -Sy --needed --noconfirm fig

echo "Starting docker."
systemctl start docker
systemctl enable docker

echo "Done provisioning."
