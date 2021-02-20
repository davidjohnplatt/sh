#!/bin/bash
#
#  script to backup pictures to removable drive 
#
pictureDir=/home/david/Pictures
targetDir=/media/david/aefcc6ba-409c-4438-a4bf-ec45cc232b7d
cd $pictureDir
#
# make any missing directories
#
for i in `find . -type d -name "*" -print | cut -c 3-`
do 
  if [ -d "$targetDir/$i" ]; then
      nullInstr=true
  else
      mkdir $targetDir/$i
      echo "need to make $i"
  fi
done
#
#  copy the jpg files
#
for j in `find . -type f -name "*.jpg" -print | cut -c 3-`
do
    if [ -f "$targetDir/$j" ]; then
       nullInstr=true 
    else
       cp $j $targetDir/$j
       echo "copying file to $targetDir/$j"
    fi
done
#
# copy the Sony ARW files
#
for j in `find . -type f -name "*.ARW" -print | cut -c 3-`
do
    if [ -f "$targetDir/$j" ]; then
       nullInstr=true 
    else
       cp $j $targetDir/$j
       echo "copying file to $targetDir/$j"
    fi
done
#
# copy the Nikon NEF files
#
for j in `find . -type f -name "*.NEF" -print | cut -c 3-`
do
    if [ -f "$targetDir/$j" ]; then
       nullInstr=true 
    else
       cp $j $targetDir/$j
       echo "copying file to $targetDir/$j"
    fi
done
