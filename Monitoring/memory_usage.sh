#!/bin/bash

USED_MEM=$(free -m | awk '/Mem:/ {print $3}')
TOTAL_MEMORY=$(free -m | awk '/Mem:/ {print $2}')

USGAE_IN_PERCENTAGE=$((($USED_MEM  * 100)/$TOTAL_MEMORY))


echo "usage ${USGAE_IN_PERCENTAGE}%"