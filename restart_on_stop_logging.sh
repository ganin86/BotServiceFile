#!/bin/bash

LOG_FILE="program.log"

# Check the latest update of the log file 
LAST_UPD=$(stat -c %Y $LOG_FILE)
CURRENT_TIME=$(date +%s)
DIFF=$(expr $CURRENT_TIME - $LAST_UPD)

# If the difference is more than 30 minutes, restart the program
if [ $DIFF -gt 1800 ]
then
    ./program
fi
