#!/bin/bash 

for file in ${1}/**/*; do 
    FILENAME=$(basename $file)
    PLATFORM=$(basename $(dirname $file))
    echo "${PLATFORM}-${FILENAME}:${file}"
done
