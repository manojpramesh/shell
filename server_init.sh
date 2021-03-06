#!/bin/sh

# run from github
# bash <(curl -s https://raw.githubusercontent.com/manojpramesh/shell/master/server_init.sh)

# To get the latest package lists
sudo apt-get update

# Install NodeJS 8.x
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
sudo apt-get install -y build-essential

# Install MongoDB 3.2
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# Install Docker CE
sudo apt-get update
yes Y | sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable"
sudo apt-get update
yes Y | sudo apt-get install docker-ce

# Executing the Docker Command Without Sudo
# sudo usermod -aG docker ${USER}
# su - ${USER}
# id -nG

# Install Docker Compose
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# docker-compose --version
