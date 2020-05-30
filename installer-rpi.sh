#!/bin/sh
# installer.sh will install the necessary packages for camera operations and perform some basic functions
# Rasbian OS 05/2020 on RPI4-4GB

# remove unwanted packages
sudo apt-get purge wolfram-engine -y && \
sudo apt-get purge libreoffice* -y && \
sudo apt-get clean -y && \
sudo apt-get autoremove -y && \

#PACKAGES=“<enter-the-names-of-packages-to-install>”
sudo apt-get update && sudo apt-get upgrade  -y && \

# installs developer environment to build OpenCV source code
sudo apt-get install build-essential cmake pkg-config -y && \

# installs python OpenCV toolchain
sudo apt-get install ipython python-opencv python-scipy python-numpy python-setuptools python-pip && \

# installs simpleCV
sudo pip install https://github.com/sightmachine/SimpleCV/zipball/master


# installs image IO libraries
sudo apt-get install libjpeg62-dev libtiff5-dev libjasper-dev libpng12-dev -y && \

# install video IO libraries
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev && \
sudo apt-get install libxvidcore-dev libx264-dev -y && \

sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev -y && \
sudo apt-get install libfontconfig1-dev libcairo2-dev -y && \
sudo apt-get install libgdk-pixbuf2.0-dev libpango1.0-dev -y && \
sudo apt-get install libgtk2.0-dev libgtk-3-dev -y && \

# install GUI backen-GTK
sudo apt-get install libqt4-dev libgtk2.0-dev -y && \
sudo apt-get install libatlas3-base libatlas-base-dev -y && \
sudo apt-get install gfortran -y && \
sudo apt-get install libhdf5-dev libhdf5-serial-dev libhdf5-103 -y && \
sudo apt-get install libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5 -y && \

# installs python development environment - these should all be installed by this step
sudo apt-get install python3-dev python-numpy -y && \

# install pip 
wget https://bootstrap.pypa.io/get-pip.py -y && \
sudo python get-pip.py -y && \
sudo python3 get-pip.py -y && \
sudo rm -rf ~/.cache/pip -y && \

# install virtual environment
sudo pip install virtualenv virtualenvwrapper -y && \

# open up your ~/.bashrc  file:
nano ~/.bashrc

# append the following lines to the bottom of the file:
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_ENV_BIN_DIR=bin
# ctrl+x, y, enter to save

# create a virtual environment
mkvirtualenv cv -p python3

# install picamera API
pip install "picamera[array]"

## easy method to install openCV 4
pip install opencv-contrib-python==4.1.0.25

# activate the virtualenv 'cv' - cv is user created virtualenv
>> source /home/pi/.virtualenvs/cv/bin/activate

# test if opencv is installed
cd ~
workon cv # else replace with above command 
python
>>> import cv2
>>> cv2.__version__
'4.1.1'
>>>

## source - https://www.pyimagesearch.com/2019/09/16/install-opencv-4-on-raspberry-pi-4-and-raspbian-buster/
