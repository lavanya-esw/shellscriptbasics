#!/bin/bash/

## changing file extension .txt to .html

if [ $# -ne 1 ]; then
    echo "usage : script.sh <path_of_directort>"
    echo "Example: script.sh "path/to/myfiles""
    exit 1
fi

DIRECTORY_PATH=$1

if [ ! -d $DIDIRECTORY_PATHR_PATH ]; then
    echo "Error: Directory '$DIRECTORY_PATH' not found."
    exit 1
fi

cd $DIRECTORY_PATH

for file in *.txt; do
    mv $file ${file%.txt}.html
done

echo "File extension change complete..."
