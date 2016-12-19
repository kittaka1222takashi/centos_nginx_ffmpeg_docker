#!/bin/bash
sudo yum -y update
# if [ ! -e '/usr/local/nginx/conf/nginx.conf' ]; then
# sudo yum -y install docker
# sudo systemctl start docker
# sudo systemctl enable docker
cd /vagrant
# sudo curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
docker-compose up
# sudo docker build -t mdst/nginx -f ./Dockerfile_nginx .
# sudo docker run -d -p 80:80 -v /vagrant:/usr/local/nginx/html mdst/nginx
# sudo docker build -t mdst/ffmpeg -f ./Dockerfile_ffmpeg .
# sudo docker run -d -e TARGET_RTMP_URL="rtmp://localhost:1935/live/mdst" mdst/ffmpeg
# yum install -y lsof
# lsof -i:80
# sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${container_id}
# vagrant plugin install vagrant-vbguest
# vagrant plugin install vagrant-docker-compose
