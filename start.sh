#!/bin/bash

ORGANIZATION=$ORGANIZATION
ACCESS_TOKEN=$ACCESS_TOKEN

cd /home/docker/actions-runner
RUNNER_ALLOW_RUNASROOT=1 ./config.sh --url https://github.com/${ORGANIZATION} --token ${ACCESS_TOKEN} --work /home/docker/container-data

./run.sh & wait $!