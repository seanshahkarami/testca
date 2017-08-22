#!/bin/sh

name=$1
openssl req -new -newkey rsa:2048 -keyout private/$name.pem -nodes -out reqs/$1.pem -outform PEM -subj "/CN=$name/"
