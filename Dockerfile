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






RUN bash installs/sshserver.bash




EXPOSE 22

##CMD ["/usr/sbin/sshd", "-D"]

##RUN service ssh start &
##CMD service ssh start && while true; do sleep 3000; done
####

ENTRYPOINT ["sh", "/entry.bash"]

