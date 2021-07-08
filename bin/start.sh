#!/bin/sh

source /usr/share/crondata/container/.env
export HOSTNAME BD_PASS
docker swarm init --advertise-addr 127.0.0.1
docker stack deploy --compose-file /usr/share/crondata/container/docker-crondata-nginx.yml crondata
