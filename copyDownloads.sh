#!/bin/bash
#
#  script to move files from the download box to the working box
#
if [ $# -ne 1 ]
then
    echo "Usage: cpdown.sh Regexp"
    exit 1
fi
STARTDIR=/home/david/Videos;export STARTDIR
SOURCEDIR=/home/david/Downloads;export SOURCEDIR
cd $STARTDIR
scp -r -i /home/david/.ssh/id_rsa david@192.168.1.99:$SOURCEDIR/$1* .
