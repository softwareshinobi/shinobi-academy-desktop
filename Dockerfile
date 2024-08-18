FROM dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt as baseDesktop

####

WORKDIR /

COPY /provision /

COPY /provision/media/Backgrounds/desktop.png /usr/share/lxqt/themes/light/simple_blue_widescreen.png

RUN ls -lha /

RUN ls -lha /usr/share/lxqt/themes/light/simple_blue_widescreen.png

####

ARG DEBIAN_FRONTEND=noninteractive

RUN rm /etc/apt/sources.list.d/google-chrome.list

RUN apt update && apt install -y recordmydesktop kdenlive shotcut zip docker-compose curl wget net-tools keepassx vlc dos2unix git filezilla openjdk-17-jdk maven gradle remmina thunderbird openssh-server sudo

RUN bash installs/hostname.bash

####



CMD ["/usr/sbin/sshd","-D"]

EXPOSE 22

####

###RUN bash installs/media.bash

#########################################

#RUN bash installs/docker.bash

#RUN bash installs/netbeans.bash


##FROM ubuntu:noble

##



##COPY provision/provision.bash /provision.bash

##RUN chmod +x /ubuntu-server-provision.sh




