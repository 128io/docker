#!/bin/bash

if [ ! -f "config.sh" ]; then
    echo "config.sh is missing!"
    exit 1
fi

. config.sh

docker build --tag 128io/lemp $DIR/lemp
