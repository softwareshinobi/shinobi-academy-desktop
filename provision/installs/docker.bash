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

## setting server hostname

sudo apt-get update;

##

sudo apt -y install ca-certificates curl;

## Installing Docker + Compose (Not Docker Compose)


### APT package dependency setup

sudo install -m 0755 -d /etc/apt/keyrings

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

### Docker Engine situation install

sudo apt purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose docker docker.io

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world
