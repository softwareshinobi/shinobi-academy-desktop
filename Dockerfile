## twerking the original image for the goodies that i need

## every's self explanatory. but basically i'm doing software development and video editing in the cloud for making course content

FROM dorowu/ubuntu-desktop-lxde-vnc as desktopBase

##

## ENV DEBIAN_FRONTEND noninteractive

## ARG DEBIAN_FRONTEND=noninteractive

## COPY /provision.bash /provision.bash

## RUN chmod +x /ubuntu-server-provision.sh

## RUN bash /provision.bash

RUN apt install zip kdenlive recordmydesktop
