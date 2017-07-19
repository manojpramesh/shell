#!/bin/sh

# pre-requisites
# bash <(curl -s https://raw.githubusercontent.com/manojpramesh/shell/master/server_init.sh)

# Run from github
# bash <(curl -s https://raw.githubusercontent.com/manojpramesh/shell/master/ethereum_docker.sh)

# Get docker from github
git clone https://github.com/manojpramesh/ethereum-docker.git

# Start ethereum nodes
cd ethereum-docker
sudo docker-compose up -d
cd ..

# Show status
sudo docker ps