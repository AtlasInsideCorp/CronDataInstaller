#!/bin/sh
set -e
sudo docker login -u client -p 4xYkVIAH8kdAH7mP/9BBhbb2ByzLGm4F utmstack.azurecr.io

docker pull utmstack.azurecr.io/crondata-backend:latest

docker pull utmstack.azurecr.io/crondata-prometheus:latest

docker pull utmstack.azurecr.io/crondata-grafana:latest

docker pull utmstack.azurecr.io/crondata-alertmanager:latest

docker pull utmstack.azurecr.io/crondata-node-exporter:latest

docker pull utmstack.azurecr.io/crondata-postgres:latest

docker pull utmstack.azurecr.io/crondata-frontend:latest

docker pull utmstack.azurecr.io/crondata-google-cadvisor:latest

docker pull utmstack.azurecr.io/crondata-filebrowser:latest
