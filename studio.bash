#!/bin/bash

set -e

set -x

reset

clear

docker-compose build

docker-compose pull

docker-compose down

docker-compose up -d
