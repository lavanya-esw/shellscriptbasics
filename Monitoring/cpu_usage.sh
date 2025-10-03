#!/bin/bash

# Define a threshold for CPU usage (e.g., 80%)
CPU_THRESHOLD=80

echo "Starting CPU usage monitoring..."

while true; do
    # Get CPU idle percentage using top in batch mode for a single iteration
    # and extract the idle percentage (typically the 8th field in 'Cpu(s)' line)
    CPU_IDLE=$(top -b -n 1 | grep "Cpu(s)" | awk '{print $8}' | cut -d'.' -f1)

    # Calculate CPU usage percentage
    CPU_USAGE=$((100 - CPU_IDLE))

    # Print the current CPU usage
    echo "$(date): Current CPU Usage: $CPU_USAGE%"

    # Check if CPU usage exceeds the threshold
    if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ]; then
        echo "WARNING: High CPU usage detected!"
    fi

    # Wait for a specified interval before checking again (e.g., 5 seconds)
    sleep 5
done