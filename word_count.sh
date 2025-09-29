#!/bin/bash

path=$1
if [ ! -z $path ]; then
    echo "given $path is exists"

    if [ ! -d $path ]; then
        echo "given $path is a file"
        if [ -r $path ] && [ -w $path ]; then
            echo "file has engouh permissions"
        fi
        if [ -s $path ]; then 
            echo -e "\n given file is not empty"
            echo "Total lines:$(wc -l < $path)"
            echo "Total words:$(wc -w < $path)"
            echo "Total characters:$(wc -m < $path)"
        fi
        
    fi
else
    echo echo "given $path is not exists"

fi

