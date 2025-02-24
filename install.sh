#/bin/sh
set -e

if ! lsusb|grep 'FPC Sensor Controller' >/dev/null 2>&1; then
    prerr "No fingerprint sensor detected"
    exit 1
fi

pacman -S libusb libevent libdbus fprintd openssl-1.1
pacman -U ./opencv-4.6.0-7-x86_64.pkg.tar.zst
pacman -U ./openexr-3.1.11-1-x86_64.pkg.tar.zst
systemctl stop fprintd
mkdir -p /opt/fingerpp/bin/
cp fingerpp3.archlinux /opt/fingerpp/bin/fingerpp
chmod +x /opt/fingerpp/bin/fingerpp

export EDITOR="$(pwd)/edit.sh"
chmod +x "$EDITOR"

systemctl edit fprintd
systemctl restart fprintd

