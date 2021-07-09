
printf "${CLEAR_LINE}[Initializing]🎉${GREEN}   Updating curren installation of CRONDATA Installer, please wait while we do all for you!${NO_COLOR}\n"
git pull
sudo chmod a+x -R .
sudo rm -R /usr/share/crondata/
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
/bin/bash ./crondata_installer.sh
