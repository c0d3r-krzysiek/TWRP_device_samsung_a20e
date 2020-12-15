#!/bin/bash
cd ~/TWRP
git clone https://github.com/roynatech2544/TWRP_device_samsung_a20e.git device/samsung/a20e
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 0
ccache -F 0
bash device/samsung/a20e/build_twrp.sh
cd out/target/product/a20e
curl -F "file=@recovery.img" https://file.io/?expires=1w
