#!/bin/sh

# installer.sh for Raspi NOOBS

apt-get update && \
apt-get upgrade -y && \

# remove unwanted packages
apt-get purge wolfram-engine -y && \
apt-get purge libreoffice* -y && \

apt-get install build-essential cmake pkg-config -y && \
apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y && \
apt-get install libxvidcore-dev libx264-dev -y && \
apt-get install libgtk2.0-dev libgtk-3-dev -y && \
apt-get install libatlas-base-dev gfortan -y && \
apt-get install python3-dev -y && \

cd ~ && wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.3.0.zip && unzip opencv.zip && \
wget https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py && \
sudo python3 get-pip.py -y && \

pip install numpy -y
