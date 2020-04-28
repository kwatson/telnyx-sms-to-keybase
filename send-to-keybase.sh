#!/bin/sh

tel=$1
msg=$2

curl -X POST -d "{\"msg\": \"$tel\n$msg\"}" $HOOKURL
