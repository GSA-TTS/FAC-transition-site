#!/bin/bash

if [ $# -eq 0 ]
    then
    echo "Need an update directory and slug. md will be appended."
fi

date=$(date '+%Y-%m-%d')

file=${1}/${date}-${2}.md
if [ -f $file ] 
then
    echo "No action taken; update exists."
else
    cp _template.md $file
fi