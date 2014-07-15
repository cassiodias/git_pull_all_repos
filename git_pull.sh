#!/bin/bash
 
CUR_DIR=$(pwd)
 
echo " +++ pulling for all repos..."
 
# find all git repos
for repo in $(find . -name ".git" | cut -c 3-); do
  echo "";
  echo " ++++++ pulling repo: "+$repo;
 
  cd "$repo"; # go to .git dir
  cd ..;   # go to root folder
 
  git pull;
 
  cd $CUR_DIR
  done
 
echo "done, have a nice day ;)"
