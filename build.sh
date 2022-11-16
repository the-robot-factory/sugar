#!/bin/bash

set -e

export CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=x86_64-unknown-linux-gnu-gcc
export CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_RUSTFLAGS="-C link-arg=--sysroot=/usr/local/Cellar/x86_64-unknown-linux-gnu/7.2.0/toolchain/x86_64-unknown-linux-gnu/sysroot"
# export TARGET_CC=x86_64-unknown-linux-gnu-gcc

# Library headers to link against
export TARGET_CFLAGS="-I $(pwd)/target/usr/include/x86_64-linux-gnu -isystem $(pwd)/target/usr/include"
echo $TARGET_CFLAGS
# Libraries (shared objects) to link against
# export LD_LIBRARY_PATH="$(pwd)/target/lib/x86_64-linux-gnu/:$(pwd)/target/usr/lib/x86_64-linux-gnu/"
# echo $LD_LIBRARY_PATH

export OPENSSL_DIR="$(pwd)/target/usr/"
export OPENSSL_LIB_DIR="$(pwd)/target/usr/lib/x86_64-linux-gnu/"

export PKG_CONFIG_SYSROOT_DIR=/
export PKG_CONFIG_PATH="$(pwd)/target/usr/lib/x86_64-linux-gnu/pkgconfig/"
export PKG_CONFIG_LIBDIR="$(pwd)/target/usr/lib/x86_64-linux-gnu/:$(pwd)/target/lib/x86_64-linux-gnu/"
echo $PKG_CONFIG_LIBDIR

cargo build --target=x86_64-unknown-linux-gnu --release