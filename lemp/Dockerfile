FROM ubuntu:14.04
MAINTAINER a@128.io

# Services used by this container
RUN apt-get update && apt-get install -y php5-fpm php5-cli nginx-light php5-intl php5-mcrypt

# Utilities used when debugging
RUN apt-get install -y htop nano

# Enable mcrypt PHP module
RUN php5enmod -s ALL mcrypt

ADD virtual-hosts.conf /etc/nginx/sites-enabled/default

ADD startup.sh /opt/startup.sh
RUN chmod a+x /opt/startup.sh
CMD /opt/startup.sh
