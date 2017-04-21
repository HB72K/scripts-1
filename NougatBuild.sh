#!/bin/bash
#
# Copyright (C) 2017
# The "Fuck Jack Build Script"
# Written by Michael S Corigliano (Mike Criggs) (michael.s.corigliano@gmail.com)
#
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#
#
# The purpose of this script is to work around JACK and NINJA, which have been
# broken in AOSP as of android-7.0.
#
# Usage: ./NougatBuild.sh <DEVICE>
#

DEVICE="$1"

# Export USER AND HOST NAME
export KBUILD_BUILD_USER="CarlosArriaga"
export KBUILD_BUILD_HOST="EroticHost"

#
# FUCK JACK
# Use with Android 7.X
#

# Kill the Jack server
  printf "Fuck Jack...\n\n"
  sleep 1
  ./prebuilts/sdk/tools/jack-admin kill-server
  rm -rf ~/.jack*

# IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT!
#
# Replace the value in the first of "ANDROID_JACK_VM_ARGS" with half of your RAM
# (i.e.: if you have 8GB of ram, use "-Xmx4g")
#
  export ANDROID_JACK_VM_ARGS="-Xmx4g -XX:+TieredCompilation -Dfile.encoding=UTF-8"
#
# IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT! IMPORTANT!

  export SERVER_NB_COMPILE=2
  export ANDROID_JACK_VM_ARGS=$JACK_SERVER_VM_ARGUMENT

# You may need to uncomment the following command if Java tells you to use it.
#  ulimit -n unlimited

  ./prebuilts/sdk/tools/jack-admin install-server prebuilts/sdk/tools/jack-launcher.jar prebuilts/sdk/tools/jack-server-4.8.ALPHA.jar
./prebuilts/sdk/tools/jack-admin start-server

# Set CCACHE
rm -rvf ../.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 20G

# Make a clean build, building dirty after you have had jack issues may result in a failed build
make clean

# Compile the build
. build/envsetup.sh
brunch $DEVICE
