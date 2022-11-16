#!/bin/bash

set -e

mkdir -p target
cd target

# From time to time the download link gets taken down and needs to be replaced with a new one.
# Here's where the current download link was found:
#  https://packages.debian.org/buster/amd64/libssl-dev/download
curl -O http://ftp.us.debian.org/debian/pool/main/o/openssl/libssl-dev_1.1.1n-0+deb10u3_amd64.deb
ar p libssl-dev_1.1.1n-0+deb10u3_amd64.deb data.tar.xz | tar xvf -
rm -rf libssl-dev_1.1.1n-0+deb10u3_amd64.deb

curl -O http://ftp.jp.debian.org/debian/pool/main/s/systemd/libudev-dev_232-25+deb9u12_amd64.deb
ar p libudev-dev_232-25+deb9u12_amd64.deb data.tar.xz | tar xvf -
rm -rf libudev-dev_232-25+deb9u12_amd64.deb

curl -O http://ftp.jp.debian.org/debian/pool/main/s/systemd/libudev1_232-25+deb9u12_amd64.deb
ar p libudev1_232-25+deb9u12_amd64.deb data.tar.xz | tar xvf -
rm -rf libudev1_232-25+deb9u12_amd64.deb

curl -O http://security.debian.org/debian-security/pool/updates/main/g/glibc/libc6_2.28-10+deb10u2_amd64.deb
ar p libc6_2.28-10+deb10u2_amd64.deb data.tar.xz | tar xvf -
rm -rf libc6_2.28-10+deb10u2_amd64.deb

curl -O http://security.debian.org/debian-security/pool/updates/main/g/glibc/libc6-dev_2.28-10+deb10u2_amd64.deb
ar -p libc6-dev_2.28-10+deb10u2_amd64.deb data.tar.xz | tar xvf -
rm -rf libc6-dev_2.28-10+deb10u2_amd64.deb

# curl -O http://ftp.jp.debian.org/debian/pool/main/g/glibc/libc6_2.31-13+deb11u5_amd64.deb
# ar p libc6_2.31-13+deb11u5_amd64.deb data.tar.xz | tar xvf -
# rm -rf libc6_2.31-13+deb11u5_amd64.deb

# curl -O http://ftp.jp.debian.org/debian/pool/main/g/glibc/libc6-dev_2.31-13+deb11u5_amd64.deb
# ar p libc6-dev_2.31-13+deb11u5_amd64.deb data.tar.xz | tar xvf -
# rm -rf libc6-dev_2.31-13+deb11u5_amd64.deb

# curl -O http://security.debian.org/debian-security/pool/updates/main/g/glibc/libc-dev-bin_2.28-10+deb10u2_amd64.deb
# ar p libc-dev-bin_2.28-10+deb10u2_amd64.deb data.tar.xz | tar xvf -
# rm -rf libc-dev-bin_2.28-10+deb10u2_amd64.deb

# curl -O http://security.debian.org/debian-security/pool/updates/main/g/glibc/libc-bin_2.28-10+deb10u2_amd64.deb
# ar p libc-bin_2.28-10+deb10u2_amd64.deb data.tar.xz | tar xvf -
# rm -rf libc-bin_2.28-10+deb10u2_amd64.deb