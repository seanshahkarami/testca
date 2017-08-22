#!/bin/sh

name=$1
openssl req -new -newkey rsa:2048 -keyout private/$name.pem -nodes -out reqs/$name.pem -outform PEM -subj "/CN=$name/"
