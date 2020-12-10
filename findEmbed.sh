#!/bin/bash
#
#  script to zip one month work of pictures
#
if [ $# -ne 1 ]
then
    echo "Usage: findEmbed.sh Year"
    exit 1
fi
echo $1
cd ~/Pictures/$1
pwd
find . -name "*embedded*.jpg" -print
find . -name "*embedded*.jpg" -exec rm {} \;
