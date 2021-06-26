#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

set -e
/bin/bash ./bin/git_clone.sh

printf "${CLEAR_LINE}[5/6]⏳   Setup enviroment, this can take a while, please wait"
ip=$(hostname -I | awk '{print $1}')
pass="CronData2021.."
sudo cat > /usr/share/crondata/container/.env << EOF
HOSTNAME=$ip
BD_PASS=$pass
EOF
sleep 10s

sudo docker login -u client -p 4xYkVIAH8kdAH7mP/9BBhbb2ByzLGm4F utmstack.azurecr.io

printf "${CLEAR_LINE}[5/6]⏳   Downloading CRONDATA images"
/bin/bash ./bin/crondata_images.sh
printf "${CLEAR_LINE}[6/6]🎉${GREEN}   CRONDATA image dowbloaded successfully!${NO_COLOR}\n"

sudo chmod 777 -R /usr/share/crondata/
printf "${CLEAR_LINE}[5/6]🎉${GREEN}   Enviroment setup created!${NO_COLOR}\n"

printf "${CLEAR_LINE}[6/6]⏳   Starting Crondata"
sudo docker-compose -f /usr/share/crondata/container/docker-compose.yml --env-file /usr/share/crondata/container/.env -p crondata up --detach
printf "${CLEAR_LINE}[6/6]🎉${GREEN}   Crondata is ready!${NO_COLOR}\n"