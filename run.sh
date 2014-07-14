#!/bin/bash

if [ ! -f "config.sh" ]; then
    echo "config.sh is missing!"
    exit 1
fi

. config.sh

./cmd.sh kill > /dev/null 2>&1
./cmd.sh rm > /dev/null 2>&1

docker run -d \
    --name $CONTAINER_LEMP \
    --volume $DIR_SITE_RSS:/sites/rss-redelivered \
    --publish 80:80 \
    --publish 3306:3306 \
    128io/lemp
