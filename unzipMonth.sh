#!/bin/bash
#
#  script to zip one month work of pictures
#
if [ $# -ne 1 ]
then
    echo "Usage: unzipMonth.sh Month"
    exit 1
fi
YEAR=2013
echo $YEAR$1
cd ~/Pictures/$YEAR/$1
for i in `ls -1 | grep zip`
do
  unzip $i
done

