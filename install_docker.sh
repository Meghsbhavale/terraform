#! /bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
docker info
echo "Installed Docker"
sudo docker pull nginx
cd $HOME
mkdir nginx
cd nginx
cat nginx.conf
cat Dockerfile
docker build -t momo89/nginx .
docker run -p 80:80 -d momo89/nginx
