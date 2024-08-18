FROM dorowu/ubuntu-desktop-lxde-vnc as desktopBase

ARG DEBIAN_FRONTEND=noninteractive

RUN rm /etc/apt/sources.list.d/google-chrome.list

RUN apt update && apt install -y recordmydesktop kdenlive shotcut zip docker-compose curl wget net-tools keepassx vlc dos2unix git filezilla openjdk-17-jdk maven gradle remmina thunderbird

COPY /provision .

RUN bash installs/docker.bash

RUN bash installs/netbeans.bash

RUN bash installs/sshserver.bash

##FROM ubuntu:noble

##



##COPY provision/provision.bash /provision.bash

##RUN chmod +x /ubuntu-server-provision.sh

## EXPOSE 22

## CMD ["/usr/sbin/sshd","-D"]
