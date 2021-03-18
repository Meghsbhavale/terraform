#! /bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
docker info
echo "Installed Docker"
sudo docker pull nginx
docker run --name test -it nginx
