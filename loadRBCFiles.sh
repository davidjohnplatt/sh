#!/bin/bash
#
#  script to load csvfiles 
#
for i in `ls -1  ~/Downloads/Holdings/*.csv`
do
    echo $i
    python ~/Dropbox/Code/Python/RBCloader.py $i
done
