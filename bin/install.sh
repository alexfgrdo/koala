#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ../src/info.txt

echo "[*] Koala Toolkit Installer"

echo "[*] Git clone theilttlebigbot/koala"
git clone https://github.com/lxndrfgrd/koala.git $DIR

echo "[*] Install scripts in /usr/local/bin/"
chmod +x $KOALA && ln -sf $KOALA $BIN

echo "[*] Build"
docker build --rm --no-cache -t lxndrfgrd/koala $DIR/
