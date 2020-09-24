sudo apt update

sudo apt upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt install tzdata -y

# install dev tools

sudo apt install curl wget vim git openssh-client mc htop tmux -y

# install dev env
sudo apt install nodejs npm python3 python3-pip openjdk-14-jdk maven mysql-server redis -y

#install dotnet
sudo wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb

sudo apt update

sudo apt install apt-transport-https -y

sudo apt update

sudo apt install dotnet-sdk-3.1 -y

sudo rm packages-microsoft-prod.deb