#!/usr/bin/env bash

#Create Competencies:
#WIP
#$1: How many?
#$2: URL > ex: http://52.17.174.169:5000

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$2/api/competency"
#echo "Creating Competencies at "$2

JSON1='{"name": "Competency'
JSON2='","description": "..."}'

START=1
END=$1
for ((i=START; i<=END; i++))
do
    curl --silent -X POST -H "Content-Type: application/json" -d "$JSON1$(date +"%N")$JSON2" $URL | jq .id
done
