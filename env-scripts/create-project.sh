#!/usr/bin/env bash

#Create Project:
#WIP
#$1: OWNER_ID
#$2: URL > ex: http://52.17.174.169:5000

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$2/api/project"

JSON1='{"project": {"name": "Project'
JSON2='","wbs": "WBS'
JSON3='","description": "a project","responsible": "'
JSON4='",
"startDate": "2015-03-01T17:00:00.000Z",
"endDate": "2015-05-01T17:00:00.000Z"
}
}'

curl --silent -X POST -H "Content-Type: application/json" -d "$JSON1$(date +"%N")$JSON2$(date +"%N")$JSON3$1$JSON4" $URL | jq .

echo ""
