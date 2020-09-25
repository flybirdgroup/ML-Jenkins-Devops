#!/bin/bash
if sudo docker ps -a | grep -i MLdevops; then
   sudo docker rm -f MLdevops
fi

docker rmi -f $(docker images -f "dangling=true" -q)

sleep 5


