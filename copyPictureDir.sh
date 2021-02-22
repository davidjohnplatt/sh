#!/bin/bash
#
#  script to copy files to Google drive.  Assumes rclone mount is running
#
if [ $# -ne 1 ]
then
    echo "Usage:  $0 dirctory"
    exit 1
fi
TARGETDIR=~/Gdrive;export STARTDIR
SOURCEDIR=/media/david/68F5-8E3B;export SOURCEDIR
#
# make the target directory if it is missing 
#
if [ -d "$TARGETDIR/$1" ]; then
   nullInstr=true
else
   echo "need to make $TARGETDIR/$1"
   mkdir $TARGETDIR/$1
fi
#
#  copy the files if they do not exist in the target directory
#
cd $SOURCEDIR/$1
for i in `find . -type f -print | cut -c 3-`
do
  if [  -f "$TARGETDIR/$1/$i" ]; then
    echo "$i file exists"
  else
    echo "cp $i $TARGETDIR/$1/$i"
    cp $i $TARGETDIR/$1/$i
  fi
done
