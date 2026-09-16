#!/bin/bash
set -ex

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .

make DESTDIR="${PREFIX}" OPTFLAGS=""
make install
