#!/bin/bash

FILE=./.appwrite # The path of the Appwrite file

if $1; then # Check whether action is in single function mode
    if [ -f "$FILE" ]; then # Check whether the Appwrite file exists
        . $FILE # set values from .appwrite file as variables
        appwrite functions createTag --functionId=$FUNCID --command="${COMMAND}" --code="${CODE}" # deploy the fucntion to Appwrite
    fi
else # Action is in multiple functions mode
    for d in ./*/; do # Go through each subdirectory
        cd "$d" # cd into the directory
        if [ -f "$FILE" ]; then # Check whether the Appwrite file exists
            . $FILE # set values from .appwrite file as variables
            appwrite functions createTag --functionId=$FUNCID --command="${COMMAND}" --code="${CODE}" # deploy the fucntion to Appwrite
        fi
        cd .. # cd back to root directory
    done
fi