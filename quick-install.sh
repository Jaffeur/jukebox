#!/bin/bash

#python 
apt-get install -y build-essential checkinstall
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
cd ~/Downloads/
wget https://www.python.org/ftp/python/$version/Python-$version.tgz
tar -xvf Python-$version.tgz
cd Python-$version
./configure
make install


#pip
apt-get install -y python-pip python-dev build-essential 
pip install -y --upgrade pip 


#mopidy
cd /
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/jessie.list
apt-get update
apt-get install -y mopidy


# music
mkdir /home/music

# mopidy webextension
pip install configobj
pip install Mopidy-Material-Webclient
pip install Mopidy-Iris
pip install Mopidy-Local-SQLite

