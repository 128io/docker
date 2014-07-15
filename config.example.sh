#!/bin/bash

if [ $0 = $BASH_SOURCE ]; then
    echo "Should not be called directly."
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

##
# Directories
##
DIR_LOGS_RSS_REDELIVERED=$(cd ~/128io-data/logs/rss-redelivered && pwd)
DIR_SITE_RSS_REDELIVERED=$(cd ~/128io-data/sites/rss-redelivered && pwd)

DIR_LOGS_DOMAIN_TRACKER=$(cd ~/128io-data/logs/domain-tracker && pwd)
DIR_SITE_DOMAIN_TRACKER=$(cd ~/128io-data/sites/domain-tracker && pwd)

##
# Container Names
##
CONTAINER_LEMP=128io-lemp
