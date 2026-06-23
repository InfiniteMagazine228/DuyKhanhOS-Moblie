#!/bin/bash
set -e

mkdir -p iso/boot/grub
mkdir -p output

cp configs/grub.cfg iso/boot/grub/grub.cfg

touch iso/kernel
touch iso/initrd.img

grub-mkrescue \
-o output/DuyKhanhOS-Mobile.iso \
iso
