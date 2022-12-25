#!/bin/bash 

FILE_PATTERN="^${1}/(.*)/(.*)"

for file in ${1}/**/*; do 
    [[ $file =~ $FILE_PATTERN ]]

    PLATFORM="${BASH_REMATCH[1]}"
    FILE="${BASH_REMATCH[2]}"
    echo "${PLATFORM}-${FILE}:${file}"
done
