#!/bin/bash
#
df -PB 1G / | tail -n 1 | awk '{ print $4 }'
