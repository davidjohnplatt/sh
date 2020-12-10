#!/bin/bash
#
#  script to drive rclone one directory at a time.
#
if [ $# -ne 1 ]
then
    echo "Usage: rcloneDriver.sh Year"
    exit 1
fi
year=$1
pictureDir=/home/david/Pictures/$year
cd $pictureDir
for i in `ls`
do
  month=$i
  cd $month
  for j in `ls`
  do
    day=$j
    cd $day
    echo $year/$month/$day `date`
    ls
    rclone sync /home/david/Pictures/$1 GoogleDrive:$year/$month/$day
    cd ..
  done
  cd ..
done
