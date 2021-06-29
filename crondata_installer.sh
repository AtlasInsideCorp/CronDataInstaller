#!/bin/sh
set -e

CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[Initializing]🎉${GREEN}   Welcome to CronData Installer, please wait while we do all for you!${NO_COLOR}\n"

/bin/bash ./bin/colors.sh

/bin/bash ./bin/checks.sh

/bin/bash ./bin/install_docker.sh

/bin/bash ./bin/install_git.sh

/bin/bash ./bin/setup_enviroment.sh

printf "${CLEAR_LINE}[6/6]⏳   Starting CRONDATA"

/bin/bash ./bin/start.sh

printf "${CLEAR_LINE}[DONE]🎉${GREEN}   CronData is ready to use, access to browser: $HOSTNAME!${NO_COLOR}\n"