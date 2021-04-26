#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ../src/info.txt

echo "[*] Koala Toolkit Uninstaller"

echo "[*] Remove containers and image"
docker container kill lxndrfgrd/koala
docker container rm lxndrfgrd/koala
docker image rm lxndrfgrd/koala
docker image rm kalilinux/kali-rolling

echo "[*] Remove all scripts and directories"
rm -rf $BIN
rm -rf $DIR
