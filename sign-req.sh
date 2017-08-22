#!/bin/sh

name=$1
openssl ca -config openssl.cnf -in reqs/$name.pem -out certs/$name.pem -batch -notext
