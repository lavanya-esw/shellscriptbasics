#!/bin/bash
#
#to change file name
#
mylocation=`pwd`
echo myloaction is $mylocation
cd $mylocation/Directory
ls *.txt
for file in *.txt; do
mv  $file ${file%.txt}.csv
done
#rename *.txt *.csv

echo "files extensions are changed"
