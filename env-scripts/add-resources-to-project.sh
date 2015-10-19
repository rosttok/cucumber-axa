#!/usr/bin/env bash
#$1: URL

set -e

cd $(dirname ${BASH_SOURCE[0]})


JSON1='{"project":{"id":"'
JSON2='"},"resources":['
JSON3='{"id":"'
JSON4='",}'
JSON5=',{"id":"'
JSON6='",}]}'

#Get list of resources
URL1="$1/api/resource/0/20"
RESOURCES_ID=($(curl --silent -GET -H "Content-Type: application/json" $URL1 | jq '.[] | .id'))
echo ${RESOURCES_ID[5]}

#Get list of projects
URL2="$1/api/project"
PROJECTS_ID=($(curl --silent -GET -H "ContentType: application/json" "$URL2/0/20" | jq '.[] | .id'))
echo ${PROJECTS_ID[2]}



for proj in "${PROJECTS_ID[@]}"
do
  echo "${proj}"
  for res in "${RESOURCES_ID[@]}"
  do
    echo "${res}"
    
  done
  curl --silent -X POST -H "Content-Type: application/json" -d 'AQUÍ VA EL JSON' $URL2 | jq .

done

# {
#    "project":{
#       "id":"0e8106bd-8fff-4b8f-b38a-3f395409dc51"
#    },
#    "resources":[
#       {
#          "id":"04c68e8a-d3e5-4e07-be63-60ef13167655",
#       },
#       {
#          "id":"6f6cc17b-8772-4a8b-8a26-8b6f35af81f7",
#       },
#       {
#          "id":"bb291888-786a-4163-8242-e316a1bdc6bc",
#       }
#    ]
# }
