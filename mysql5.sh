#!/bin/sh
docker stop mysql5 
docker rm mysql5 
docker run --name mysql5 -d --restart always --network mynetwork --ip 172.18.0.4 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql:5



