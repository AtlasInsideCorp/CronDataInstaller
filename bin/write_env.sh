#!/bin/sh

CLEAR_LINE='\r\033[K'
printf "${CLEAR_LINE}[Initializing]${GREEN}   Welcome to CRONDATA Installer, please wait while we do all for you!${NO_COLOR}\n"
read -p 'Enter Password: ' passvar

if [ ! "$passvar" ]; then
  echo "arguments must be provided"
  exit 1
fi

ip=$(hostname -I | awk '{print $1}')
sudo cat > /usr/share/crondata/container/.env << EOF
HOSTNAME=$ip
BD_PASS=$passvar
EOF
