#!/bin/bash

if [ $0 = $BASH_SOURCE ]; then
    echo "Should not be called directly."
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

##
# Directories
##
DIR_LOGS=$(cd ~/logs && pwd)
DIR_SITE_RSS=$(cd ~/Documents/rss-redelivered && pwd)

##
# Container Names
##
CONTAINER_LEMP=128io-lemp
