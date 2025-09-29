#!/bin/bash

FILEPATH=$PWD
FILE=$FILEPATH/data.csv




while IFS= read -r line; do
    if echo "$line" | grep -iq "Devops"; then
        echo "$line" >> "output.log"
    fi


done < "$FILE"
