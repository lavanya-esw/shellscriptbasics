#!/bin/bash

FILES=$(find -type f -iname "*.log" -mtime +14)

echo $FILES