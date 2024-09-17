#!/bin/bash
if [ ! -f log.log ];
then
touch log.log
else
   current_time=$(date "+%Y.%m.%d-%H.%M.%S")
   Size=$(du log.log | awk '{print $1;}')
    if [ $Size -gt 10 ]; then
    cat log.log > log_old_$current_time.log
    true > log.log
    fi
fi
