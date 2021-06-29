#!/bin/sh

source /usr/share/crondata/container/.env
export HOSTNAME DOMAIN BD_PASS
docker swarm init --advertise-addr 127.0.0.1
docker stack deploy --compose-file /usr/share/crondata/container/docker-crondata-stack.yml crondata
