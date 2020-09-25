#!/bin/bash
if sudo docker ps -a | grep -i mldevops; then
   sudo docker rm -f mldevops
fi

docker rmi -f $(docker images -f "dangling=true" -q)

sleep 5


