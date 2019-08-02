#!/bin/sh
docker stop php56
docker rm php56
docker run --name php56 -d  --restart always --add-host api.zhendecar.io:172.18.0.2 --network mynetwork --ip 172.18.0.5 -v /workspace:/workspace:cached   php:5.6-fpm



