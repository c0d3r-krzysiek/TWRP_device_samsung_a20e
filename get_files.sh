#!/bin/bash
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
cd ~
mkdir TWRP
cd TWRP
yes | repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0 -c --no-tags --no-clone-bundle
repo sync > /dev/null
