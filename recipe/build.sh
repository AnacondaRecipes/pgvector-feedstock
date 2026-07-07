#!/bin/bash
set -ex

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* .


if [[ "${CONDA_BUILD_CROSS_COMPILATION}" == "1" ]]; then
  chmod +x $RECIPE_DIR/arm64_pg_config
  export PG_CONFIG="${RECIPE_DIR}/arm64_pg_config"
  make DESTDIR="${PREFIX}" OPTFLAGS=""
  make install

else
  make DESTDIR="${PREFIX}" OPTFLAGS=""
  make install
fi

