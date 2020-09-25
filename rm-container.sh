#!/bin/bash
if sudo docker ps -a | grep -i deploy; then
   sudo docker rm -f deploy
fi

docker rmi -f $(docker images -f "dangling=true" -q)

sleep 5


