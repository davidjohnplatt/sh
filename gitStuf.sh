#!/bin/sh
#
# example git commands for setting up a repository.  Note that the repository
# must first be created using the github UI.
#
git clone https://github.com/davidjohnplatt/MySql.git
cd MySql
#
# create or move the files you want in the repostory here
#
cp ~/Dropbox/Code/MySql/* .
git add createRBCtables.sql 
git add *
git commit -m "First Commit"
git status
git push
git status
git log

