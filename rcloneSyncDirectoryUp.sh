#/bin/bash
#
#  script to zip one month work of pictures
#
if [ $# -ne 1 ]
then
    echo "Usage: rcloneCopyDirectoryUp.sh Directory"
    exit 1
fi
#
#
#
date
rclone sync /home/david/Pictures/$1 GoogleDrive:Pictures/$1
date
