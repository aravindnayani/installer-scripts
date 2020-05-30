#!/bin/sh
# installer.sh will install the necessary packages for camera operations and perform some basic functions

#PACKAGES=“<enter-the-names-of-packages-to-install>”
apt-get update
apt-get upgrade -y

# installs developer environment to build OpenCV source code
apt-get install build-essential cmake pkg-config -y && \

# installs image IO libraries
apt-get install libjpeg62-dev libtiff5-dev libjasper-dev libpng12-dev -y && \

# installs python development environment
apt-get install python-dev python-numpy -y && \

# install video IO libraries
apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-2 libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev -y && \

# install video IO libraries
apt-get install libxvidcore-dev libx264-dev -y && \

# install GUI backen-GTK
apt-get install libqt4-dev libgtk2.0-dev -y && \
apt-get install libatlas-base-dev gfortran -y && \

python -v
