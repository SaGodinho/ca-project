#!/bin/sh

docker stop ca-app
# You may want to do this differently if you want to keep or investigate stopped containers
docker rm ca-app
docker run -d -p 8000:5000 --name ca-app ca-app
