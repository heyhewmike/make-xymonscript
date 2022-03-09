#!/bin/bash
# Update apt
apt update
# Install the below packages
apt install -y wget unzip gcc openssl libssl-dev apache2 ethtool fping rename make librrds-perl pcre2-utils libpcre2-dev libprce3-dev rrdtool librrd-dev #ldap-utils
# Use wget to download Xymon 4.3.30 from sourceforge
wget https://downloads.sourceforge.net/project/xymon/Xymon/4.3.30/xymon-4.3.30.tar.gz #or update to a different mirror from this URL https://sourceforge.net/settings/mirror_choices?projectname=xymon&filename=Xymon/4.3.30/xymon-4.3.30.tar.gz
# Uncompress the download
tar -xvf xymon-4.3.30.tar.gz
# add new user xymon
useradd xymon
cd xymon-4.3.30/



apt install -y hobbit-plugins