#!/bin/sh

source /usr/share/crondata/container/.env
export HOSTNAME DOMAIN BD_PASS
docker swarm init --advertise-addr $HOSTNAME
docker stack deploy --compose-file /usr/share/crondata/container/docker-crondata-stack.yml crondata
