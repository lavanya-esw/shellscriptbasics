#!/bin/bash

CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
echo "IDLE IS $CPU_IDLE"
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc )
echo " cpu usage is $CPU_USGAE"  
CPU_USAGE_INT=$(printf "%.0f" "$CPU_USAGE")

echo "cpu usage is $CPU_USAGE_INT"