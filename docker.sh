#!/bin/bash
sudo docker rmi -f $(docker images -f "dangling=true" -q)