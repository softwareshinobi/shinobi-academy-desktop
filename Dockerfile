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

RUN apt update && apt install  openssh-server sudo -y

##RUN bash installs/sshserver.bash


RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1020 test 

RUN  echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]


