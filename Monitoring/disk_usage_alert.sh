#!/bin/bash


THERSHOLD="2"
DISK_USAGE=$(df -hT | grep -v Filesystem)
IP_ADDRESS=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)


while IFS= read -r line; do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')
    if [  $USAGE -ge $THERSHOLD ]; then
        MESSAGE+="High Disk usage on $PARTITION: $USAGE % <br>"
    fi
done <<< "$DISK_USAGE"

echo -e "${MESSAGE}"

sh mail.sh "lavanyaeswaravaka0606@gmail.com" "High Disk Usage Alert" "High Disk Usage" "$MESSAGE" "$IP_ADDRESS" "DevOps Team"

# TO_ADDRESS=$1
# SUBJECT=$2
# ALERT_TYPE=$3
# MESSAGE_BODY=$4
# FORMATTED_BODY=$(printf '%s\n' "$MESSAGE_BODY" | sed -e 's/[]\/$*.^[]/\\&/g')
# IP_ADDRESS=$5
# TO_TEAM=$6