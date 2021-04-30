#!/bin/bash
sudo docker version
sudo docker info
sudo docker images
sudo docker stop cde0cc371ae0
sudo docker start cde0cc371ae0
sudo docker start cde0cc371ae0 -p6000:6379
sudo docker ps
sudo docker ps -a
sudo docker pull
sudo docker logs postgres
sudo run -d  -p6000:6379 redis:latest --name redis_older
sudo docker run -it --rm --network localhost postgres psql -h postgres -U postgres
sudo docker exec -it cde0cc371ae0 /bin/bash
sudo docker host ls
sudo docker inspect host
sudo docker inspect none
sudo docker inspect bridge

