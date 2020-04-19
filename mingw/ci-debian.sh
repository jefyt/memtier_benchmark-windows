#!/bin/sh

cat /etc/*-release

dpkg --add-architecture i386
apt-get -qq -o=Dpkg::Use-Pty=0 update
apt-get -qq -o=Dpkg::Use-Pty=0 install \
  curl git gpg autoconf libtool make automake \
  xz-utils gcc-mingw-w64 g++-mingw-w64

cd mingw
./build.sh
