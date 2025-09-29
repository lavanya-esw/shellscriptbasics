#!/bin/bash

path=$1
if [ ! -z path ]; then  
   
   Files=$(find . -iname "*.txt")
   echo -e "\n files are:"
   echo -e "\n $Files"
   for file in $FILE; do
   sed -i 's/FOO/BAR/g'
   done 
fi