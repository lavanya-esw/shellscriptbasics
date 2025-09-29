#!/bin/bash

FILEPATH=$1

if [ -d $FILEPATH ]; then
    echo "$(ls -la)"
else
    # check file exists or not
    if [ -f $FILEPATH ]; then
        echo "file exists"
    else
        echo "file doesn't exists"
    fi
fi
#to check file is redable or not

if [ -r "$FILEPATH" ] &&  [ -w "$FILEPATH" ]; then
    echo "file is readable and writabale"
else
    echo "file is not readable and writabale"
fi
 