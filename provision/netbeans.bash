#!/bin/bash

set -e

set -x

##

ls

wget https://dlcdn.apache.org/netbeans/netbeans/21/netbeans-21-bin.zip

ls

mv netbeans-21-bin.zip netbeans.zip

ls

unzip netbeans.zip

pwd

