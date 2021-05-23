#!/bin/sh
set -e

DIR=$PWD

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'
CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[4/6]⏳   Cloning repo"
sudo mkdir -m777 -p -v /usr/share/crondata/container
git clone  https://github.com/jdieguezbean/CronDataContainer.git /usr/share/crondata/container
printf "${CLEAR_LINE}[4/6]🎉${GREEN}   Container installed successfully!${NO_COLOR}\n"