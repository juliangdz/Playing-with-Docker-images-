#!/bin/bash

echo "*********Installing and Use Docker Ubuntu as a VM************"

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update

echo "Checking the docker-ce"
apt-cache policy docker-ce
sudo apt install docker-ce

echo "Checking the docker status "
sudo systemctl status docker

echo " Adding users to Docker for Running VM "
sudo usermod -aG docker ${USER}
su - ${USER}

echo "Checking if user is added"
id -nG

echo "Add username displayed in above ID"
sudo usermod -aG docker username

echo "******Runing a test Docker Image" 
docker run hello-world


echo ""
echo ""
echo " Now Killing the Previous Docker Containers"
docker ps -a
docker rm -f gifted_hawking frosty_curie 

