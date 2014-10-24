#!/usr/bin/env sh

user=$1
workspace=$2

userhome=/home/$user

# Create workspace with suitable permissions.
mkdir -p $workspace/bin $workspace/pkg $workspace/src
chown -R $user $workspace
chgrp -R $user $workspace

# Setup GOPATH
if ! grep -q 'export GOPATH=$HOME/go' $userhome/.profile
  then echo 'export GOPATH=$HOME/go' >> $userhome/.profile ;
fi

# Add GOPATH/bin to PATH
if ! grep -q 'export PATH=$PATH:$GOPATH/bin' $userhome/.profile
  then echo 'export PATH=$PATH:$GOPATH/bin' >> $userhome/.profile ;
fi
