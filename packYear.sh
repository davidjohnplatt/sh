#!/bin/bash
#
#  script to zip one month work of pictures
#
if [ $# -ne 1 ]
then
    echo "Usage: packYear.sh Year"
    exit 1
fi
echo $1
cd ~/Pictures/$1
pwd
for i in `ls -1` 
do
  echo $i
  zip $1$i $i/*/*
done
