## twerking the original image for the goodies that i need

## every's self explanatory. but basically i'm doing software development and video editing in the cloud for making course content

FROM dorowu/ubuntu-desktop-lxde-vnc as desktopBase

##

ENV DEBIAN_FRONTEND noninteractive

ARG DEBIAN_FRONTEND=noninteractive

##WORKDIR /provision

##COPY /provision .

## /provision.bash /provision.bash

##WORKDIR content/

## RUN chmod +x /ubuntu-server-provision.sh

##RUN bash provision.bash

RUN rm /etc/apt/sources.list.d/google-chrome.list

RUN apt update && apt install -y recordmydesktop kdenlive zip docker-compose curl wget net-tools keepassx vlc dos2unix

## RUN apt update && apt install   recordmydesktop
