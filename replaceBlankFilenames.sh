#!/bin/bash
#
#  script to remove blank charachters from file names
#
find . -name "* *.arw" -print | while read file
do
    new=`echo "$file" | sed 's/ /_/g'`
    mv "$file" "$new"
done
