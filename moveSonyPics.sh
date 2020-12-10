#!/bin/bash
#
#  script to zip one month work of pictures
#
#if [ $# -ne 1 ]
#then
#    echo "Usage: unzipMonth.sh Month"
#    exit 1
#fi
pictureDir=/home/david/Pictures
cd  ~/Dropbox/Camera\ Uploads/
#
#  get the year month and day from the  exif data
#
for i in `ls -1 DSC*.ARW` 
do
    year=`exiftool /home/david/Dropbox/Camera\ Uploads/$i | grep Modification | cut -c 35-38`
    month=`exiftool /home/david/Dropbox/Camera\ Uploads/$i | grep Modification | cut -c 40-41`
    day=`exiftool /home/david/Dropbox/Camera\ Uploads/$i | grep Modification | cut -c 43-44`
    echo $year $month  $day
    if [ -d "$pictureDir/$year/$month/$day" ]; then
      echo "~/Pictures/$year/$month/$day is a directory"
    else
      if [ -d "$pictureDir/$year/$month" ]; then
        echo "$year/$month is a directory"
      else
        if [ -d "$pictureDir/$year/" ]; then
          echo "$year is a directory"
        else
          mkdir $pictureDir/$year
          echo "need to make $pictureDir/$year"
        fi
        mkdir $pictureDir/$year/$month
        echo "need to make directory /home/david/Pictures/$year/$month"
      fi
      mkdir ~/Pictures/$year/$month/$day
      echo "need to make directory ~/Pictures/$year/$month/$day"
    fi
done
#
#  copy the files to the proper directory is they do not exit there
#
for i in `ls -1 DSC*.ARW` 
do
    year=`exiftool /home/david/Dropbox/Camera\ Uploads/$i | grep Modification | cut -c 35-38`
    month=`exiftool /home/david/Dropbox/Camera\ Uploads/$i | grep Modification | cut -c 40-41`
    day=`exiftool /home/david/Dropbox/Camera\ Uploads/$i | grep Modification | cut -c 43-44`
    echo $year $month  $day
    if [ -f "$pictureDir/$year/$month/$day/$i" ]; then
       echo "not copying file $pictureDir/$year/$month/$day/$i because file exists"
    else
       cp $i $pictureDir/$year/$month/$day
       echo "copying file $pictureDir/$year/$month/$day/$i"
    fi
       
done
