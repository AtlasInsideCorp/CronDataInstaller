#!/bin/sh
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

printf "[1/6]🔎   Checking...."
if ! (( $(id -u) == 0 )); then
 printf "${CLEAR_LINE}💀${RED}   You must have ROOT access to continue with installation${NO_COLOR}\n"
 exit 1
fi

if ! ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    printf "${CLEAR_LINE}💀${RED}   You must have INTERNET access to continue with installation${NO_COLOR}\n"
    exit 1
fi

printf "${CLEAR_LINE}[1/6]🎉${GREEN}   Check passed successfully!${NO_COLOR}\n"
   