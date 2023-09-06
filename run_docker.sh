#!/bin/bash
cd Git
git clone git@github.com:newmandnn/Demo.git
cd Demo
git init 
pwd
ls -la
sudo apt -y install docker-ce docker-ce-cli
sleep 5
usermod -aG docker ubuntu
sudo docker info 
cd Flask_Docker
sudo docker build -t demo_app:version-1.04 .
sudo docker run -p 7577:5000 --name container_with_app demo_app:version-1.04
