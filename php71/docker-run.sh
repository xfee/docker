#!/bin/sh
docker stop php71
docker rm php71
docker run --name php71 -d  --restart always --add-host local.api.zhendecar.com:172.18.0.2 --network mynetwork --ip 172.18.0.3 -v ~/workspace:/workspace:cached   php71:v1
docker exec php71 sh -c "nohup php /workspace/web/project/local.api.zhendecar.com/artisan queue:work database > /root/local.api.zhendecar.queue.log 2>&1 &"
