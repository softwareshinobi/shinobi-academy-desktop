#!/bin/bash

##
## This script installs stuff 
##     to set up a linux server
##     suitable for newbies.
##
## This linux server will be hosted under
##     linux.softwareshinobi.digital
##
## Before you go, check read around my blog!
##
##     https://www.softwareshinobi.digital
##

##

set -e;

set -x;

## 

cat /etc/issue;

echo "Shinobi OS 22.04" > /etc/issue;

cat /etc/issue;

##

apt-get install -y openssh-server;

apt-get install -y sudo;

##

service ssh start;

##

echo "fin."
