#!/bin/sh

if [ ! -e index.txt ]; then
  touch index.txt
fi

if [ ! -e serial ]; then
  echo 01 > serial
fi

mkdir -p private reqs certs
chmod 700 private
