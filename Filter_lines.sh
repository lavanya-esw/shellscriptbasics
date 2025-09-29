#!/bin/bash

FILEPATH=$PWD
FILE=$FILEPATH/data.csv




while IFS= read -r line; do

echo "$(grep -qi Devops $line 1>> output.log)"

done < "$FILE"
