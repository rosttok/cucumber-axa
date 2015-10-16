#!/bin/sh

#WIP
#You need to change the URL and the staffingGroup id
URL="http://localhost:5555/api/resource"

echo "Creating resources in: "$URL

curl -X POST -H "Content-Type: application/json" -d '{
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
    "id": "07c2fb22-14bf-4918-a70c-2aa4498c9de0",
    "description": "Description"
  }
}' $URL
echo ""
