#!/bin/bash
export ANDROID_MAJOR_VERSION=q
export ARCH=arm64
# build the project
do_build() {
  # compile it
  . build/envsetup.sh
  
  lunch omni_a20e-eng
  
  make recoveryimage -j`nproc`
}

# --- main --- #
do_build
#
