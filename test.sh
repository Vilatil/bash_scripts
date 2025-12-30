#!/bin/bash
hours=$(date +%H)
minutes=$(date +%M)
seconds=$(date +%S)
echo "in what time this action is going to take place?"
read your_time
user_hours=$(echo $your_time|cut -c1-2)
result_hours=$((user_hours-hours))
echo "it will happen in $result_hours"

