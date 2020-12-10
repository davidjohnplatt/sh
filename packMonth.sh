#!/bin/bash
#
#  script to zip one month work of pictures
#
if [ $# -ne 1 ]
then
    echo "Usage: packMonth.sh Month"
    exit 1
fi
YEAR=2015
echo $YEAR$1
zip $YEAR$1 $1/*/*

