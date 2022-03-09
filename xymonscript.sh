#!/bin/bash
# Update apt
apt update
# Install the below packages
apt install -y wget unzip gcc openssl apache2 ethtool fping rename 
# Use wget to download Xymon 4.3.30 from sourceforge
wget https://downloads.sourceforge.net/project/xymon/Xymon/4.3.30/xymon-4.3.30.tar.gz #or update to a different mirror from this URL https://sourceforge.net/settings/mirror_choices?projectname=xymon&filename=Xymon/4.3.30/xymon-4.3.30.tar.gz
# Uncompress the download
tar -xvf xymon-4.3.30.tar.gz
# set current pwd path as variable
currentdir=$(pwd)
# move into the xymon folder
cd xymon-4.3.30/
#use wget to download most recent pcre2 from source & most recent rrdtool from source
wget https://github.com/PhilipHazel/pcre2/archive/refs/heads/master.zip
wget https://oss.oetiker.ch/rrdtool/pub/rrdtool.tar.gz
# extract above
unzip master*
tar -xvf rrdtool.tar.gz
# remove zips from xymon
mv master.zip $currentdir/master.zip
mv rrdtool.tar.gz $currentdir/rrdtool.tar.gz
# add new user xymon
useradd xymon



apt install -y hobbit-plugins