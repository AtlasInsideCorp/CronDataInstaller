#!/bin/sh

CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[Initializing]${GREEN}   Welcome to CronData Installer, please wait while we do all for you!${NO_COLOR}\n"
read -p -r -d 'Domain: ' domain
read -p -r -d 'Password: ' passvar

ip=$(hostname -I | awk '{print $1}')
sudo cat > /usr/share/crondata/container/.env << EOF
HOSTNAME=$ip
DOMAIN=$domain
BD_PASS=$passvar
EOF
sleep 10s

echo Thankyou $uservar we now have your login details