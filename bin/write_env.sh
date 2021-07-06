#!/bin/sh

CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[Initializing]${GREEN}   Welcome to CronData Installer, please wait while we do all for you!${NO_COLOR}\n"
#read -p 'Domain: ' domain
read -p 'Password: ' passvar

if [ ! "$passvar" ]; then
  echo "arguments must be provided"
  exit 1
fi

ip=$(hostname -I | awk '{print $1}')
sudo cat > /usr/share/crondata/container/.env << EOF
HOSTNAME=$ip
DOMAIN=$domain
BD_PASS=$passvar
EOF
#sudo echo "$ip crondata.$domain" >> /etc/hosts
#sudo echo "$ip traefik.$domain" >> /etc/hosts
#sudo echo "$ip grafana.$domain" >> /etc/hosts
#sudo echo "$ip prometheus.$domain" >> /etc/hosts
#sudo echo "$ip alertmanager.$domain" >> /etc/hosts
#sudo echo "$ip filebrowser.$domain" >> /etc/hosts
