#!/bin/bash

usage=$(du -d 1 $HOME | awk '{print $1}' | awk 'NR==1')
echo "$usage"
if [ $usage -gt 2048 ];then
        echo "it's more"
elif [ $usage -lt 2048 ];then
        echo "it's good"
elif [ $usage -eq 0 ];then
        echo "Error: try again"
fi
