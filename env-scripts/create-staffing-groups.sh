#!/usr/bin/env bash
#Create Staffing Groups:
#WIP
#$1: How many Staffing Groups?
#$2: URL > ex: http://52.17.174.169:5000

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$2/api/staffing-group"
#echo "Creating Staffing Groups at "$2

JSON1='{"name": "staffingGroup'
JSON2='","description": "..."}'

START=1
END=$1
for ((i=START; i<=END; i++))
do
    curl --silent -X POST -H "Content-Type: application/json" -d "$JSON1$(date +"%N")$JSON2" $URL | jq .id
done
