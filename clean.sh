#! /bin/bash
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -q)
sudo docker rmi $(sudo docker images -q)
cd 
rm -rf Git
sudo docker system prune --volumes -f
sudo docker image prune -a -f
sudo apt -y remove docker-ce docker-ce-cli
