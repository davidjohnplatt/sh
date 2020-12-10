#!/bin/bash
#
#  script to active servers
#
FIRSTOCTET=192.168.1.;export FIRSTOCTET
for number in {1..10}
do
  ping -c 3 $FIRSTOCTET$number
done
