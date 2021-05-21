#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[3/6]⏳   Checking for git installation"
if ! command -v git > /dev/null; then
  printf "${CLEAR_LINE}[3/6]⏳   Installing git"
  sudo apt install git-all
fi

printf "${CLEAR_LINE}[3/6]🎉${GREEN}   Git check passed!${NO_COLOR}\n"
 