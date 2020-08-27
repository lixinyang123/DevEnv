FROM ubuntu

RUN apt update

RUN apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install tzdata -y

# install dev tools
RUN apt install curl wget vim git openssh-client mc htop tmux -y

# install dev env
RUN apt install nodejs npm python3 python3-pip openjdk-14-jdk mysql-server redis -y

#install dotnet
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb

RUN apt update

RUN apt install apt-transport-https -y

RUN apt update

RUN apt install dotnet-sdk-3.1 -y

RUN rm packages-microsoft-prod.deb

ENTRYPOINT [ "bash" ]