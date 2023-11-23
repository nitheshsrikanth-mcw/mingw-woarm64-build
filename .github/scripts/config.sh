#!/bin/bash

set -e # exit on error
set -x # echo on

GCC_VERSION=${GCC_VERSION:-gcc-master}
BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}

TARGET=${TARGET:-aarch64-w64-mingw32}
CRT=${CRT:-msvcrt}
SOURCE_PATH=${SOURCE_PATH:-$PWD/code}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TARGET}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-V=1 -j$(nproc)}
INSTALL_PATH=${INSTALL_PATH:-~/cross}
TOOLCHAIN_PATH=${TOOLCHAIN_PATH:-~/cross}
TOOLCHAIN_PACKAGE_NAME=${TOOLCHAIN_PACKAGE_NAME:-$TARGET-$CRT-toolchain.tar.gz}

RUN_CONFIG=${RUN_CONFIG:-1}
RUN_INSTALL=${RUN_INSTALL:-1}

PATH=$INSTALL_PATH/bin:$PATH
