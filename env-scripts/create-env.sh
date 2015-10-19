#!/usr/bin/env bash

#Create environment to test:
#WIP
#$1: How many ...
#$2: URL > ex: http://52.17.174.169:5000

set -e

cd $(dirname ${BASH_SOURCE[0]})

NUM_STAFFING_GROUPS=5
NUM_COMPETENCIES=5
NUM_RESOURCES=5
NUM_PROJECTS=5
URL='http://52.17.174.169:5000'

. ./create-competencies.sh $NUM_COMPETENCIES $URL

. ./create-staffing-groups.sh 10 http://52.17.174.169:5000 | xargs -0 -I {} ./create-resources.sh 10 "c2146205-6907-4747-8725-f7dacd729e8c" http://52.17.174.169:5000
