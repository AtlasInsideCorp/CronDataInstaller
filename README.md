# CronDataInstaller

## Recommendations

### Operating System
This installation guide provides instructions to perform the CRONDATA installation on Ubuntu 20.04 LTS.
### Resources for Master
| :exclamation:  Minimum Resources Requeriments
|-----------------------------------------|
- MINIMUM REQUERED for non-prod environments: 4 Cores, 4 GB of RAM, 20GB Disk Space (Minimum requered)

## Installation steps
### Preparing for installation
- Update packages list: apt update
- Install WGET and NET-TOOLS: apt install wget net-tools
- Download the latest version from https://github.com/AtlasInsideCorp/CronDataInstaller/releases/latest/download/CronDataInstaller.zip (You can use `# wget [URL]` to download the installer directly to the server)
- Unzip the installer using the following command `unzip CronDataInstaller.zip`, if you don't have the unzip tool you can install it using the command `sudo apt-get install zip unzip`
- Set execution permissions with `#cd CronDataInstaller && sudo chmod -R +x .`
- Execute installer `./crondata_installer.sh`
- Once the installation process is finished you can access the panel with the credentials-> username: `admin`, password:` password`
  
