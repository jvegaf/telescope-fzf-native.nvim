#!/bin/bash

MAINLINE_BRANCH="main"
RELEASE_BRANCH_PATTERN="^releases/(.*)"
REF="${1}"
COMMITHASH="${2}"


if [ "${REF}" -eq "${MAINLINE_BRANCH}" ]; then
    # set the computed release name to the first 8 chars of the commit sha 
    echo "${COMMITHASH:0:8}"

elif [ "${REF}" =~ "${RELEASE_BRANCH_PATTERN}" ]; then 
    echo "${BASH_REMATCH[1]}"

else
    echo "${REF}"

fi
