#!/bin/bash

USED_MEM=$(free -m | awk '/Mem:/ {print $3}')
TOTAL_MEMORY=$(free -m | awk '/Mem:/ {print $2}')
USGAE_IN_PERCENTAGE=$((($USED_MEM  * 100)/$TOTAL_MEMORY))

THERSHOLD=10


echo "memory usage is ${USGAE_IN_PERCENTAGE}%"

if [ "$USGAE_IN_PERCENTAGE" -ge "$THERSHOLD" ]; then
    echo "alert memory usage is ${USGAE_IN_PERCENTAGE}%"
fi
