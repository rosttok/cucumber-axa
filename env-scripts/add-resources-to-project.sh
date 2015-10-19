#!/usr/bin/env bash
#$1: URL

set -e

cd $(dirname ${BASH_SOURCE[0]})

#Get list of resources
URL1="$1/api/resource/0/20"
RESOURCES_ID=($(curl --silent -GET -H "Content-Type: application/json" $URL1 | jq '.[] | .id'))
echo ${RESOURCES_ID[5]}

#Get list of projects
URL2="$1/api/project/0/20"
PROJECTS_ID=($(curl --silent -GET -H "ContentType: application/json" $URL2 | jq '.[] | .id'))
echo ${PROJECTS_ID[2]}
