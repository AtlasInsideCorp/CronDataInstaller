#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

set -e
/bin/bash git_clone.sh

printf "${CLEAR_LINE}[5/6]⏳   Setup enviroment, this can take a while, please wait"
cat <<EOF > /usr/share/crondata/env.yml
HOSTNAME: $HOSTNAME
BD_PASS: CronData2021..
EOF
sudo docker login -u client -p 4xYkVIAH8kdAH7mP/9BBhbb2ByzLGm4F utmstack.azurecr.io
sudo chmod 777 -R /usr/share/crondata/
sudo docker-compose -f /usr/share/crondata/container/docker-compose.yml --env-file /usr/share/crondata/env.yml -p crondata up --detach
#sudo apt-get install openjdk-8-jre
#sudo mkdir -p usr/share/crondata/app/
#sudo wget --output-document=/usr/shared/crondata/app "https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose"
#sudo chmod 777 /usr/shared/crondata/app/crondata.war
#sudo cp ./crondata.service  /etc/systemd/system
#sudo systemctl enable crondata.service