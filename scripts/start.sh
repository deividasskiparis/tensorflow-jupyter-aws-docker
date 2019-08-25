#!/bin/sh
set -e

if [ "$1" == "train" ]; then
    source train.sh
elif [ "$1" == "serve" ]; then
    source serve.sh
elif [ "$1" == "develop" ]; then
    source develop.sh
else
    echo "Received unknown command $1"
    exit 1
fi