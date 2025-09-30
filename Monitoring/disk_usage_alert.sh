#!/bin/bash


THERSHOLD="2"
DISK_USAGE=$(df -hT | grep -v Filesystem)



while IFS= read -r line; do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')
    if [  $USAGE -ge $THERSHOLD ]; then
        MESSAGE+="High usage at $PARTITION:$USAGE% \n"
    fi
done <<< "$DISK_USAGE"

echo -e "${MESSAGE}"