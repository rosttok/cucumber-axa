#!/bin/sh

#WIP
#$1: How many resources?
#$2: STAFFING_ID
#$3: URL

echo "Creating Resources at "$3

JSON1='{
  "resource": {
    "name": "tester man"
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
    "id": '
JSON2=',
"description": "Description"
}
}'

START=1
END=$1
for ((i=START; i<=END; i++))
do
   curl -X POST -H "Content-Type: application/json" -d $JSON1$2$JSON2 $3 | jq .
done

echo ""
