#!/bin/sh
apt-get update &&  # To get the latest package lists
apt-get install  -y &&
apt-get install apt-transport-https -y &&
apt-get install ca-certificates -y &&
apt-get install curl -y &&
apt-get install gnupg-agent -y &&
apt-get install software-properties-common -y &&
apt-get install unzip -y &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |
apt-key add - &&
apt-key fingerprint 0EBFCD88 &&
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable" &&
apt-get update &&
apt-get install docker-ce -y &&
apt-get install docker-ce-cli -y &&
apt-get install containerd.io -y &&
apt-get install docker-compose -y &&
wget https://edu.postgrespro.com/demo-big-en.zip -P postgres-data/ &&
cd postgres-data &&
unzip demo-big-en.zip &&
cd .. &&
docker-compose up -d
    


