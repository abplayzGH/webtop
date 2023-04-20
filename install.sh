#!/bin/sh
set -x
sudo su
sudo mkdir /compose
sudo cd /compose
sudo apt update && sudo apt install runc containerd docker.io docker-compose git -y
sudo wget -P /compose/ https://raw.githubusercontent.com/abplayzGH/webtop/main/docker-compose.yaml
sudo docker-compose -f /compose/docker-compose.yaml up
sudo wget -P /etc/init.d https://raw.githubusercontent.com/abplayzGH/webtop/main/webtop-start.sh
