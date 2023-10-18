#!/bin/bash

ORGANIZATION=$ORGANIZATION
ACCESS_TOKEN=$ACCESS_TOKEN

cd /home/docker/actions-runner

./config.sh --url https://github.com/${ORGANIZATION} --token ${ACCESS_TOKEN}

./run.sh & wait $!