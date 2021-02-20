#!/bin/bash
#
# script to copy a local directory to GDrive 
#
if [ $# -ne 1 ]
then
    echo "Usage: rcloneDriver.sh Directory(2020/05/07)"
    exit 1
fi
dirPath=$1
pictureDir=/home/david/Pictures/$dirPath
if [  -d "$pictureDir" ]; then
  cd $pictureDir
else
  md $pictureDir
  cd $pictureDir
fi
echo "Started at " `date`
echo "rclone copy $pictureDir GoogleDrive:Pictures/$dirPath "
rclone copy  $pictureDir GoogleDrive:Pictures/$dirPath  
echo "Completed at " `date`
