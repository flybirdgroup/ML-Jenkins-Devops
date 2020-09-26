#!/bin/bash
if docker ps | grep mldevops; then docker stop mldevops;
fi
docker run -p 5000:5000 --name mldevops