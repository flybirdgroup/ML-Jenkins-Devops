#!/bin/bash
if sudo docker ps -a | grep -i deploy; then
   sudo docker rm -f deploy
fi

sleep 5

while ! docker build -t deploy . ; do sleep 30 ; done ; echo succeed

sudo