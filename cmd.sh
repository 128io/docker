#!/bin/bash

if [ ! -f "config.sh" ]; then
    echo "config.sh is missing!"
    exit 1
fi

. config.sh

if [ -z "$1" ]; then
    echo "Usage: $0 <command> [container1 container2 ... containerN]"
    exit 1
fi

if [ -z "${@:2}" ]; then
    CONTAINERS="$CONTAINER_LEMP"
else
    CONTAINERS="${@:2}"
fi

if [ "$1" = "run" ]; then
    ./run.sh "$CONTAINERS"
else
    docker "$1" "$CONTAINERS"
fi
