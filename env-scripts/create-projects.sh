#!/bin/sh

#WIP
#You need to change the url and the resources id's
URL="http://localhost:5555/api/project"

echo "Creating projects in: "$URL

curl -X POST -H "Content-Type: application/json" -d '{
  "project": {
    "name": "Project Available",
    "wbs": "jghvyzetjekvejoaoxltcmmpatyawmkentqthdvgrfwljngfpk",
    "description": "a project",
    "responsible": "09923128-3e67-4eec-8f8a-f2982499a253",
    "startDate": "2015-03-01T17:00:00.000Z",
    "endDate": "2015-05-01T17:00:00.000Z"
  },
  "resources": [
    {
      "id": "09923128-3e67-4eec-8f8a-f2982499a253",
      "name": "tester man"
    }
  ]
}' $URL
echo ""
