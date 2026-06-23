#!/bin/bash
set -e

mkdir -p output

dd if=/dev/zero of=output/DuyKhanhOS-Mobile.img bs=1M count=2048

mkfs.ext4 output/DuyKhanhOS-Mobile.img
