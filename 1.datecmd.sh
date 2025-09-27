#!/bin/bash

#I want today's date with indian time

DATE=$(TZ='Asia/Kolkata' date +"%A-%F-%T-%Z")
echo "date:$DATE"
#TZ='Asia/Kolkata' date

echo "Time Zone:$(TZ='Asia/Kolkata' date)"
