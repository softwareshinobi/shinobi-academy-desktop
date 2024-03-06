#!/bin/bash

##
## Before you go, check read around my blog!
##
##     https://softwareshinobi.digital
##

set -e;

set -x;

## 



##cat /etc/issue;

##echo "Software Shinobi Desktop 22.04" > /etc/issue;

##cat /etc/issue;

## read the articles. annoying. the repos are broken and it broke everything

rm /etc/apt/sources.list.d/google-chrome.list

## http://dl.google.com/linux/chrome

## add-apt-repository --remove http://dl.google.com/linux/chrome

##add-apt-repository --remove http://dl.google.com/linux/chrome/deb stable InRelease

apt-get update;




##apt-get upgrade -y


##sudo apt install ubuntu-release-upgrader-core -y

##do-release-upgrade

##

apt-get install docker-compose -y;

##

apt-get install -y sudo;

apt-get install -y openssh-server;

service ssh start;

## networking things

apt-get install -y curl wget net-tools;

## general files and content things

apt-get install -y vim zip dos2unix 

## security things

apt-get install -y keepassx

## video editing things

apt-get install -y recordmydesktop vlc kdenlive 

## install recording

pwd

find /provision/

mkdir  /home/softwareshinobi/

mv /provision/recording/record.bash /home/softwareshinobi/

find /provision/

ls  /home/softwareshinobi/

##shotcut

## java stuff

#apt-get install -y openjdk-17-jdk-headless maven gradle

## snap stuff

##apt-get install -y snapd

##service start snapd

##snap install netbeans --classic

## doing work on the user

userName="softwareshinobi";

userID="4444";

##mkdir /home/users;

useradd -rm -d /home/$userName -s /bin/bash -u $userID $userName;

##chown root:root /home/$userName -R

usermod -a -G sudo $userName

usermod -a -G docker $userName

##echo '$userName:$userName' | chpasswd

### make this work later. moving on. // echo '`$userName`:`$userName`' | chpasswd

##echo 'softwareshinobi:softwareshinobi' | chpasswd

##

echo "fin."
