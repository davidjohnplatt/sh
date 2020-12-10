#!/bin/bash
#
#  script to unzip one year work of pictures
#
if [ $# -ne 1 ]
then
    echo "Usage: unzipYear.sh Year"
    exit 1
fi
echo $1
cd ~/Pictures/$1
pwd
for i in `ls -1` 
do
  echo $i
  unzip $i 
done
