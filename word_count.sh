#!/bin/bash

PATH=$1
if [ ! -z $PATH ]; then
    echo "given $PATH is exists"

    if [ ! -d $PATH ]; then
        echo "given $PATH is a file"
        if [ -s $PATH ]; then 
            echo "given file is not empty"
            echo "Total lines:"$(wc -l $PATH)""
            echo "Total words:$(wc -w $PATH)"
            echo "Total characters:$(wc -m $PATH)"
        fi
        if [ -r $PATH ] && [ -w $PATH ]; then
            echo "file has engouh permissions"
        fi
    fi
else
    echo echo "given $PATH is not exists"

fi

