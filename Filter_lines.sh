#!/bin/bash

FILEPATH=$PWD
FILE=$FILEPATH/data.csv
output_file=$FILEPATH/output.log



while IFS= read -r line; do

echo "$(grep -q ERROR $line 1>> $output_file)"

done < "$FILE"
