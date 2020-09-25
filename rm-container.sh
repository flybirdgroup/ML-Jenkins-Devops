#!/bin/bash
if sudo docker ps -a | grep -i ML-devops; then
   sudo docker rm -f ML-devops
fi

docker rmi -f $(docker images -f "dangling=true" -q)

sleep 5


