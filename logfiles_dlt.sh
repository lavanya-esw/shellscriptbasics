#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

SOURCE_DIR=$1

echo -e "$B script strted at $(date +%F-%T) $N"

if [ ! -z $SOURCE_DIR ]; then
    echo "source $SOURCE_DIR is exists"
    FILES=$(find -type f -iname "*.log" -mtime +14)
    if [ $? -eq 0 ]; then 
        echo -e "\n $FILES"
        while IFS= read -r file; do
            echo -e "$(rm -rf $file)$file....$R deleted $N"
        done <<< "$FILES"
    fi
else
    echo -e " $R source $SOURCE_DIR is not found $N"
fi