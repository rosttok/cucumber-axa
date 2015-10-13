#!/bin/sh

URL="http://52.17.174.169/api/staffing-group"

echo "Creating Staffing Groups: "$URL
#Create Staffing Groups:
#Managers, PM / SM / Service Owner, Web Designers, Technical Analysts, Quality Assurance, Mobile, .Net, Developers

curl -X POST -H "Content-Type: application/json" -d '{"name": "Managers","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "PM / SM / Service Owner","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Web Designers","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Technical Analysts","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Quality Assurance","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Mobile","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": ".Net","description": "..."}' $URL
echo ""
curl -X POST -H "Content-Type: application/json" -d '{"name": "Developers","description": "..."}' $URL
echo ""
