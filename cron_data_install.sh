#!/bin/sh
set -e

CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[Initializing]🎉${GREEN}   CronData Installer!${NO_COLOR}\n"

/bin/bash colors.sh

/bin/bash checks.sh

/bin/bash install_docker.sh

/bin/bash install_git.sh

/bin/bash setup_enviroment.sh

printf "${CLEAR_LINE}[DONE]🎉${GREEN}   CronData is ready to use, access to browser: $HOSTNAME!${NO_COLOR}\n"