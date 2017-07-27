#!/bin/sh

openssl req -new -newkey rsa:2048 -keyout private/$1.pem -nodes -out reqs/$1.pem -outform PEM -subj "/CN=$1/"
