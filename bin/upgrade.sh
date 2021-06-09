#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ../src/info.txt

echo "[*] Koala Toolkit Upgrade"

echo "[*] Uninstall current version"
docker container kill afigueir/koala
docker container rm afigueir/koala
docker image rm afigueir/koala
docker image rm kalilinux/kali-rolling

rm -rf $BIN
rm -rf $DIR

echo "[*] Git clone lxndrfgrd/koala"
git clone https://github.com/afigueir/koala.git $DIR

echo "[*] Install scripts in /usr/local/bin"
chmod +x $KOALA && ln -sf $KOALA $BIN
