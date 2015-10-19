#!/usr/bin/env bash

set -e

cd $(dirname ${BASH_SOURCE[0]})

#WIP
#$1: How many resources?
#$2: STAFFING_ID
#$3: URL

# echo "$1"
# echo "$2"
# echo "Creating Resources at $3"
URL="$3/api/resource"

JSON1='{
  "resource": {
    "name": "resource'

JSON2='"
  },
  "contracts": [
    {
      "scope": "external",
      "startDate": "2015-01-01T00:00:00.000Z",
      "endDate": "2015-12-01T00:00:00.000Z",
      "permissions": true
    }
  ],
  "staffingGroup": {
    "id": "'
JSON3='",
"description": "Description"
}
}'

START=1
END=$1
for ((i=START; i<=END; i++))
do
  curl --silent -X POST -H "Content-Type: application/json" -d "$JSON1$(date +"%N")$JSON2$2$JSON3" $URL | jq .resource.id
done
