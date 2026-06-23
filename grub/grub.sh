#!/bin/bash

mkdir -p iso/boot/grub

cat > iso/boot/grub/grub.cfg <<EOF
set timeout=10
set default=0

menuentry "DuyKhanhOS Mobile" {
 linux /kernel quiet
 initrd /initrd.img
}

menuentry "Debug Mode" {
 linux /kernel DEBUG=2
 initrd /initrd.img
}

menuentry "Reboot" {
 reboot
}

menuentry "Power Off" {
 halt
}
EOF
