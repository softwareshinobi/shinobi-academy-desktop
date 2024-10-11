FROM dorowu/ubuntu-desktop-lxde-vnc as baseDesktop

####

WORKDIR /

COPY /provision /

COPY /provision/media/Backgrounds/desktop.png /usr/share/lxqt/themes/light/simple_blue_widescreen.png

COPY /provision/media/Backgrounds/desktop.png /usr/local/share/doro-lxde-wallpapers/bg1.jpg
COPY /provision/media/Backgrounds/desktop.png /usr/local/share/doro-lxde-wallpapers/bg2.jpg
COPY /provision/media/Backgrounds/desktop.png /usr/local/share/doro-lxde-wallpapers/bg3.jpg
COPY /provision/media/Backgrounds/desktop.png /usr/local/share/doro-lxde-wallpapers/bg4.jpg

RUN ls -lha /

RUN ls -lha /usr/share/lxqt/themes/light/simple_blue_widescreen.png

####

RUN bash installs/system.bash

RUN bash installs/software.bash

RUN bash installs/hostname.bash

RUN bash installs/docker.bash

RUN bash installs/network.bash

RUN bash installs/sshserver.bash

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




