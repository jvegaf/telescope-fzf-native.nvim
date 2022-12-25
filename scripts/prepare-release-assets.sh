#!/bin/bash 

TARGET=${2}

mkdir -p "${TARGET}"

for file in ${1}/**/*; do 
    FILENAME=$(basename $file)
    PLATFORM=$(basename $(dirname $file))
    cp $file "${TARGET}/${PLATFORM}-${FILENAME}"
done
