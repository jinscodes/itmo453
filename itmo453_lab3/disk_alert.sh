#!/bin/bash

USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$USAGE" -ge 80 ]; then
    echo "$(date): WARNING - Disk usage is ${USAGE}%" >> ~/alerts.log
fi
