#!/bin/sh
docker stop php71
docker rm php71
docker run --name php71 -d  --restart always --add-host api.zhendecar.io:172.18.0.2 --network mynetwork --ip 172.18.0.6 -v /workspace:/workspace:cached   php:7.1-fpm
#docker cp /workspace/docker/sources.list php71:/etc/apt/sources.list
docker exec -it php71 bash -c "apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo_mysql mysqli"



