#!/bin/sh

#check the number of parameters provided
if [ $# -eq 0 ]
then
  #if none parameter is provided, then
  echo "Receiving 0 parameter but expects 2, hint: should provide path to a directory and a text string -- ./finder.sh path/to/directory abc"
  exit 1
else
  #if only one parameter is provided, then
  if [ $# -eq 1 ]
  then
    echo "Receiving 1 parameter but expects 2, hint: should provide path to a directory and a text string -- ./finder.sh path/to/directory abc"
    exit 1
  else
    #accept the first two parameters and assign their value to filesdir and searchstr
    filesdir=$1
    searchstr=$2
  fi
fi

#check if filesdir and searchstr have been correctly assigned
#echo $filesdir
#echo $searchstr

#check if the directory exist
if [ -d $filesdir ]
  then
    #print the result
    echo "The number of files are $(ls $filesdir | wc -l) and the number of matching lines are $(grep -r $searchstr $filesdir | wc -l)"
  else
    #if the directory does not exist, log error message and exit
    echo "path provided is not a directory"
    exit 1
fi
