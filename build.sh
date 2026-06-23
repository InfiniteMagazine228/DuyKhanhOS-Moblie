#!/bin/bash

source build/envsetup.sh

lunch android_x86_64-userdebug

make iso_img -j$(nproc)

mkdir -p output

find out -name "*.iso" | head -1 | xargs -I{} cp {} output/DuyKhanhOS-Mobile-x86_64.iso

find out -name "*.img" | head -1 | xargs -I{} cp {} output/DuyKhanhOS-Mobile-x86_64.img
