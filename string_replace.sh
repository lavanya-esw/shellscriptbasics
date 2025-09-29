#!/bin/bash

path=$1
if [ ! -z path ]; then  
   
   for file in $(find . -iname "*.txt"); do
   echo "file"$file"
   sed -i 's/FOO/BAR/g' $file   
   echo "string replaced"
   done 
fi