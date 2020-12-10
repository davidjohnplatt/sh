#/bin/bash
#
#  script to compare directorys between Google drive and local machine
#
if [ $# -ne 1 ]
then
    echo "Usage: rcloneCheckDirectoryUp.sh Directory"
    exit 1
fi
#
#
#
rclone check /home/david/Pictures/$1 GoogleDrive:/Pictures/$1
