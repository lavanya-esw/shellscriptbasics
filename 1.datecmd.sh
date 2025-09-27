#!/bin/bash

#I want today's date with indian time

TZ=$( 'Asia/kolkata' date +"%A, %F %T %Z")
echo "date:$TZ"
