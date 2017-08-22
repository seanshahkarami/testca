#!/bin/sh

if [ ! -e index.txt ]; then
  touch index.txt
fi

if [ ! -e serial ]; then
  echo 01 > serial
fi

# create directories for keys, requests and signed certificates
mkdir -p private reqs certs
chmod 700 private

if [ ! -e private/ca.pem ]; then
  openssl req -x509 -config openssl.cnf \
    -newkey rsa:2048 -keyout private/ca.pem -nodes \
    -out certs/ca.pem -outform PEM \
    -subj /CN=testca/ -days 365
fi
