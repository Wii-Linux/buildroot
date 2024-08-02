#!/bin/sh
if [ "$1" = "/" ] || [ "$1" = "" ]; then
    echo "refusing to cleanup your host rootfs"
    exit 1
fi

echo "nuking unnecessary directories"
rm -rf "$1/etc"
rm -rf "$1/var"
rm -rf "$1/media"
rm -rf "$1/opt"
rm -rf "$1/root"
rm -rf "$1/lib/modules/"*

echo "nuking unnecessary symlinks"
rm "$1/usr/lib32"
rm "$1/lib32"

echo "nuking unnecessary files"
rm "$1/usr/lib/os-release"
