#!/bin/bash
export ANDROID_MAJOR_VERSION=q
export ARCH=arm64
# build the project
do_build() {
  # compile it
  . build/envsetup.sh
  
  lunch omni_a20e-eng
  
  mka recoveryimage -j`nproc`
}

# --- main --- #
do_build
cp kernel/samsung/a20e/firmware/exynos7885_acpm_fvp.fw out/target/product/a20e/obj/KERNEL_OBJ/firmware
mka recoveryimage -j`nproc`
#
