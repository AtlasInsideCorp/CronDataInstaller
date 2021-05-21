#!/bin/sh

set -o errexit
set -o nounset

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

printf "${CLEAR_LINE}[2/6]🔎   Checking for docker installation"

IFS=$(printf '\n\t')

# Docker
printf "${CLEAR_LINE}[2/6]⏳   Installing docker"
if ! command -v docker > /dev/null; then
    sudo apt update
    sudo apt --yes --no-install-recommends install apt-transport-https ca-certificates
    wget --quiet --output-document=- https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release --codename --short) stable" -y
    sudo apt update
    sudo apt --yes --no-install-recommends install docker-ce docker-ce-cli containerd.io
    sudo usermod --append --groups docker "$USER"
    sudo systemctl enable docker
    printf "${CLEAR_LINE}[2/6]🎉${GREEN}   Docker installed successfully!${NO_COLOR}\n"

    printf "${CLEAR_LINE}[2/6]⏳   Waiting for Docker to start"
    sleep 5
else
    printf "${CLEAR_LINE}[2/6]🎉${GREEN}   Docker is already installed!${NO_COLOR}\n"
fi

# Docker Compose
if ! command -v docker-compose > /dev/null; then
    printf "${CLEAR_LINE}[2/6]🔎   Checking for docker compose installation"
    sudo wget --output-document=/usr/local/bin/docker-compose "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)"
    sudo chmod +x /usr/local/bin/docker-compose
    sudo wget --output-document=/etc/bash_completion.d/docker-compose "https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose"
    printf "${CLEAR_LINE}[2/6]🎉${GREEN}   Docker Compose installed successfully!${NO_COLOR}\n"
else
    printf "${CLEAR_LINE}[2/6]🎉${GREEN}   Docker Compose is already installed!${NO_COLOR}\n"
fi