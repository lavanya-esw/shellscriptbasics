#!/bin/bash


FILEPATH=$1

if [ -d $FILEPATH ]; then
    echo "It is an directory and path is $FILEPATH  "
    echo "$(ls -la)"
else
    # check file exists or not
    if [ -f $FILEPATH ]; then
        echo "file exists:$FILEPATH"
        if [ -r "$FILEPATH" ] &&  [ -w "$FILEPATH" ]; then
            echo "file is readable and writabale"
        else
            echo "file is not readable and writabale"
        fi
    else
        echo "file: $FILEPATH doesn't exists"
    fi
fi



 