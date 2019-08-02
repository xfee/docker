#!/bin/sh
docker stop php73
docker rm php73
docker run --name php73 -d  --restart always --add-host api.zhendecar.io:172.18.0.2 --network mynetwork --ip 172.18.0.3 -v /workspace:/workspace:cached   php:7.3-fpm



