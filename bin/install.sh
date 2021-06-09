#!/bin/sh

DIR=$HOME/.koala
KOALA=$DIR/bin/koala.sh
BIN=/usr/local/bin/koala

cat ../src/info.txt

echo "[*] Koala Toolkit Installer"

echo "[*] Git clone afigueir/koala"
git clone https://github.com/afigueir/koala.git $DIR

echo "[*] Install scripts in /usr/local/bin/"
chmod +x $KOALA && ln -sf $KOALA $BIN

echo "[*] Build"
docker build --rm --no-cache -t afigueir/koala $DIR/
