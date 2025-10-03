#!/bin/bash
set -eou pipefail

CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
echo "IDLE IS $CPU_IDLE"
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc )
echo " cpu usage is $CPU_USAGE"  
CPU_USAGE_INT=$(printf "%.0f" "$CPU_USAGE")

THERSHOLD="3"
if [ "${CPU_USAGE_INT}" -ge "${THERSHOLD}" ]; then
    echo "ALERT......CPU USGAE  IS ${CPU_USGAE_INT}%"
fi