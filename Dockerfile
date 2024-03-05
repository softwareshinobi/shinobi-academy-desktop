## twerking the original image for the goodies that i need

## every's self explanatory. but basically i'm doing software development and video editing in the cloud for making course content

FROM dorowu/ubuntu-desktop-lxde-vnc as desktopBase

##

## ENV DEBIAN_FRONTEND noninteractive

## ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /content

COPY /content .

## /provision.bash /provision.bash

##WORKDIR content/

## RUN chmod +x /ubuntu-server-provision.sh

RUN bash provision.bash

##RUN apt update && apt install zip kdenlive recordmydesktop
