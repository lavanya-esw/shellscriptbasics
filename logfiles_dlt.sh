#!/bin/bash

FILES=$(find -type f -iname "*.log" -mtime +14)

echo -e "\n $FILES"

while IFS= read -r file; do

echo "deleting the log file"

echo "$(rm -rf $file)$file....deleted"
done <<< "$FILES"