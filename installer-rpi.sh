#!/bin/sh
# installer.sh will install the necessary packages for camera operations and perform some basic functions

#PACKAGES=“<enter-the-names-of-packages-to-install>”
sudo apt-get update
sudo apt-get upgrade -y

# installs developer environment to build OpenCV source code
sudo apt-get install build-essential cmake pkg-config -y && \

# installs python OpenCV toolchain
sudo apt-get install ipython python-opencv python-scipy python-numpy python-setuptools python-pip && \

# installs simpleCV
sudo pip install https://github.com/sightmachine/SimpleCV/zipball/master


# installs image IO libraries
//sudo apt-get install libjpeg62-dev libtiff5-dev libjasper-dev libpng12-dev -y && \

# installs python development environment
//sudo apt-get install python-dev python-numpy -y && \

# install video IO libraries
//sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-2 libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev -y && \

# install video IO libraries
//sudo apt-get install libxvidcore-dev libx264-dev -y && \

# install GUI backen-GTK
//sudo apt-get install libqt4-dev libgtk2.0-dev -y && \
//sudo apt-get install libatlas-base-dev gfortran -y && \

python -v
