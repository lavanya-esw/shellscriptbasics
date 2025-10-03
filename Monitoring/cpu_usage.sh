#!/bin/bash

CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc )
CPU_USAGE_INT=$(printf "%.0f" "$CPU_USAGE")

echo "cpu usage is $CPU_USAGE_INT"