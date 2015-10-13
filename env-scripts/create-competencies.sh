#!/bin/sh

URL="http://52.17.174.169/api/competency"
ContentType="Content-Type: application/json"

echo "Competencies Groups: "$URL
#Create Competencies:
#....

curl -X POST -H "Content-Type: application/json" -d '{"name": "Competency 1","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Competency 2","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Competency 3","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Competency 4","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Competency 5","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Competency 6","description": "..."}' $URL
echo ""
