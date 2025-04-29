#!/bin/bash
#
# load the image from .tar
docker load -i webt-klausur.tar

docker run -d --name temp webt-klausur

docker cp temp:/var/www/html .  

docker stop temp && docker rm temp 

docker compose -f compose.yaml up
