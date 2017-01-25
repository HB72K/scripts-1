#!/bin/bash
#
# Copyright (C) 2017 Carlos Arriaga (carlosarriagacm@gmail.com)
#
# Usage: ./MarshmallowBuild.sh <DEVICE>
#

DEVICE="$1"

# Make a clean build, building dirty after you have had jack issues may result in a failed build
make clean

# Set USER AND HOST NAME
export KBUILD_BUILD_USER="CarlosArriaga"
export KBUILD_BUILD_HOST="EroticHost"

# Set CCACHE
rm -rvf ../.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 50G

# Compile the build
. build/envsetup.sh
brunch $DEVICE
