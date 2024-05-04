FROM dorowu/ubuntu-desktop-lxde-vnc as desktopBase

RUN rm /etc/apt/sources.list.d/google-chrome.list

RUN apt update && apt install -y recordmydesktop kdenlive zip docker-compose curl wget net-tools keepassx vlc dos2unix git filezilla openjdk-17-jdk maven
