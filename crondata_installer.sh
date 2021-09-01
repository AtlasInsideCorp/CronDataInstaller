#!/bin/sh
set -e

CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[Initializing]🎉${GREEN}   Welcome to CRONDATA Installer, please wait while we do all for you!${NO_COLOR}\n"

/bin/bash ./bin/colors.sh

/bin/bash ./bin/checks.sh

/bin/bash ./bin/install_docker.sh

/bin/bash ./bin/install_git.sh

/bin/bash ./bin/setup_enviroment.sh

printf "${CLEAR_LINE}[6/6]⏳ Starting CRONDATA, please wait..."

/bin/bash ./bin/start.sh

printf "${CLEAR_LINE}[6/6]⏳ Crondata services have been started; please wait for the panel to be accessible, this may take a few minutes"
while [ "$(curl -s -o /dev/null -w ''%{http_code}'' http://localhost:8080/api/ping)" != "200" ]; do
 sleep 10; 
 printf "${CLEAR_LINE} Checking for panel..." 
done

printf "${CLEAR_LINE}[DONE]🎉${GREEN}   CRONDATA is ready to use, access to browser in ${HOSTNAME}!${NO_COLOR}\n"