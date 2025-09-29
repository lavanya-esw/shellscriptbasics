#!/bin/bash

FILEPATH=$PWD
FILE=$FILEPATH/data.csv




while IFS= read -r line; do

echo "$(grep -q ERROR $line 1>> output.log)"

done < "$FILE"
