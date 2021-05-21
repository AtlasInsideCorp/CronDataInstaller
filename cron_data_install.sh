#!/bin/sh
set -e

CLEAR_LINE='\r\033[K'

/bin/bash colors.sh

/bin/bash checks.sh

/bin/bash install_docker.sh

/bin/bash install_git.sh

/bin/bash setup_enviroment.sh
