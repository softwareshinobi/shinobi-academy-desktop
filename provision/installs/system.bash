#!/bin/bash

##

set -e;

set -x;

## 

ARG DEBIAN_FRONTEND=noninteractive

rm /etc/apt/sources.list.d/google-chrome.list

sudo apt update 

sudo apt upgrade -y 

