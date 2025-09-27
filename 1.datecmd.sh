#!/bin/bash

#I want today's date with indian time

DATE=$( 'Asia/kolkata' date +"%A, %F %T %Z")
echo "date:$DATE"
