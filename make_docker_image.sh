#!/bin/sh

docker build -t ca-app:latest .
# Now clean up some of the old images (grep for those with repository: <none>)
# This is to prevent too many images to pile up.
# On a real production machine you may want to keep the old image in case
# there is something wrong with the new one so that you can roll back
#docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
