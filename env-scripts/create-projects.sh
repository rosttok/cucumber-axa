#!/usr/bin/env bash

#Create Project:
#WIP
#$1: SUFFIX
#$2: OWNER_ID
#$3: URL > ex: http://52.17.174.169:5000
#$4: RESOURCE_ID

set -e

cd $(dirname ${BASH_SOURCE[0]})

URL="$3/api/project"
echo "Creating Project at "$URL

JSON1='{"project": {"name": "Project'
JSON2='","wbs": "WBS'
JSON3='","description": "a project","responsible": "'
JSON4='",
"startDate": "2015-03-01T17:00:00.000Z",
"endDate": "2015-05-01T17:00:00.000Z"
},
"resources": [
{
  "id": "'
JSON5='",
"name": "testing"
}
]
}'

export AXA_PROJECT=$(curl -X POST -H "Content-Type: application/json" -d $JSON1$1$JSON2$1$2$JSON4$4$JSON5 $URL | jq .)

echo ""
