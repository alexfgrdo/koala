#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ../src/info.txt

echo "[*] Koala Toolkit Upgrade"

echo "[*] Uninstall current version"
docker container kill thelittlebigbot/koala
docker container rm thelittlebigbot/koala
docker image rm thelittlebigbot/koala
docker image rm kalilinux/kali-rolling

rm -rf $BIN
rm -rf $DIR

echo "[*] Git clone thelittlebigbot/koala"
git clone https://github.com/thelittlebigbot/koala.git $DIR

echo "[*] Install scripts in /usr/local/bin"
chmod +x $KOALA && ln -sf $KOALA $BIN
