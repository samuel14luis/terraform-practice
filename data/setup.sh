#!/bin/bash
apt-get update
apt-get -y install docker.io
echo "Sam, sos un capo de terraform!" > /root/index.html
docker run -d -v /root/index.html:/usr/share/nginx/html/index.html -p 80:80 nginx