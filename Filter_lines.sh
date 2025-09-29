#!/bin/bash

FILEPATH=$PWD
FILE=$FILEPATH/data.csv




while IFS= read -r line; do

echo "$($line | grep -qi Devops 1>>output.log)"

done < "$FILE"
