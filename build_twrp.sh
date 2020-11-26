#!/bin/bash
# build the project
do_build() {
  # compile it
  . build/envsetup.sh
  
  lunch omni_a20e-eng
  
  mka recoveryimage -j`nproc`
}

# --- main --- #
do_build
#
