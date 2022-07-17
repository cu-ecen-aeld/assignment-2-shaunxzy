#!/bin/sh

if [ $# -lt 2 ]
  then
    echo "should provide at least 2 parameters, found $#"
    exit 1
else
  writefile=$1
  writestr=$2
fi

#create file, write the string to the file and overwrite it if it already exists
echo $writestr > $writefile
