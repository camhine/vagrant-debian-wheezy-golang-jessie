#!/usr/bin/env sh

# Add testing (jessie) to sources list.
if ! grep -q 'deb http://mirrors.kernel.org/debian jessie main' /etc/apt/sources.list
  then echo 'deb http://mirrors.kernel.org/debian jessie main' >> /etc/apt/sources.list ;
fi

# Copy apt preferences into place.
cp /vagrant/provisioning/files/preferences /etc/apt/

apt-get update

# Avoid interactive configuration of golang
export DEBIAN_FRONTEND=noninteractive

# Install golang from jessie
apt-get -t jessie install -y golang
