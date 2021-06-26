#!/bin/sh
set -e

docker pull utmstack.azurecr.io/crondata-panel:latest

docker pull utmstack.azurecr.io/crondata-prometheus:latest

docker pull utmstack.azurecr.io/crondata-grafana:latest

docker pull utmstack.azurecr.io/crondata-alertmanager:latest

docker pull utmstack.azurecr.io/crondata-node-exporter:latest

docker pull utmstack.azurecr.io/crondata-postgres:latest

docker pull utmstack.azurecr.io/crondata-traefik:latest

docker pull utmstack.azurecr.io/crondata-google-cadvisor:latest

docker pull utmstack.azurecr.io/crondata-filebrowser:latest
