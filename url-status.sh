#!/bin/bash

url="$1"

# Input Validation 
if [ -z "$url" ]; then
    echo "Provide URL"
    exit 1
fi

# Check and store status code
status=$(curl -o /dev/null -s -w "%{http_code}" "$url")

if [ "$status" -ge 200 ] && [ "$status" -lt 400 ]; then
    echo " $url is UP ($status)"
else
    echo " $url is DOWN (Status: $status)"
fi
