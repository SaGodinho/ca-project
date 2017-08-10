#!/bin/sh

docker stop ca-app
docker run -d -p 8000:5000 --name ca-app ca-app
