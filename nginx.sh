#!/bin/sh
docker stop nginx
docker rm nginx
docker run --name nginx -d --restart always --network mynetwork --ip 172.18.0.2 -p 80:80 -v /workspace:/workspace:cached -v /workspace/docker/nginx:/etc/nginx nginx


