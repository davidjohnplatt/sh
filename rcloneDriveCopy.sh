#!/bin/bash
#
#  script to drive rclone one directory at a time.
#
if [ $# -ne 1 ]
then
    echo "Usage: rcloneDriver.sh Directory(2020/05/07)"
    exit 1
fi
dirPath=$1
pictureDir=/home/david/Pictures/$dirPath
cd $pictureDir
for i in `ls`
do
  file=$i
    date
    echo "rclone copy $pictureDir/$file GoogleDrive:Pictures/$dirPath"
    rclone copy $pictureDir/$file GoogleDrive:Pictures/$dirPath
done
echo "Completed at " `date`
