#!/bin/sh

openssl ca -config openssl.cnf -in reqs/$1.pem -out certs/$1.pem -batch -notext
