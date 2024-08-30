#!/bin/sh

export LIBBPF_SYS_LIBRARY_PATH="$(realpath 3rdparty/aarch64/usr/lib/aarch64-linux-gnu)"
export LIBBPF_SYS_EXTRA_CFLAGS="-I $(realpath 3rdparty/aarch64/usr/include)"

cargo build --target aarch64-unknown-linux-gnu -F static
