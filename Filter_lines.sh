#!/bin/bash

FILEPATH=$PWD
FILE=$FILEPATH/data.csv




while IFS= read -r line; do

echo "$($line | grep -i Devops >>output.log)"

done < "$FILE"
