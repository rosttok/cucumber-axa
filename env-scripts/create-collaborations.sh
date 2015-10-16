#!/bin/sh

#WIP
#You need to change the url and the project and resources id's

URL="http://localhost:5555/api/project"

echo "Creating collaborations in: "$URL

curl -X PUT -H "Content-Type: application/json" -d '{
  "project": {
    "id": "7ae05a2e-49fc-43b1-9108-4fcccaa15b84",
    "name": "project name",
    "wbs": "evoqykjxartzncnryxxiymksqjpurgycowddiinmqscwbovhem",
    "description": "a project",
    "responsible": "09923128-3e67-4eec-8f8a-f2982499a253",
    "startDate": "2015-03-01T17:00:00.000Z",
    "endDate": "2015-05-01T17:00:00.000Z"
  },
  "resources": [
    {
      "id": "09923128-3e67-4eec-8f8a-f2982499a253",
      "name": "fedaogqckhoieqsztevozxctbgkbcilzbrysqpaukzaoywsjfh"
    }
  ],
  "collaborations": [
    {
      "resourceId": "09923128-3e67-4eec-8f8a-f2982499a253",
      "month": "2015-03-01T17:00:00.000Z",
      "year": "2015",
      "attendance": {
        "start": "2015-03-01T17:00:00.000Z",
        "end": "2015-05-01T17:00:00.000Z",
        "week": [
          {
            "title": "W10",
            "number": "2"
          },
          {
            "title": "W11",
            "number": "3.05"
          },
          {
            "title": "W12",
            "number": "3"
          },
          {
            "title": "W13",
            "number": "3"
          },
          {
            "title": "W14",
            "number": "3"
          }
        ]
      }
    }
  ]
}' $URL
echo ""
