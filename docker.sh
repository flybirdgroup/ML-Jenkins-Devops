#!/bin/bash
if docker ps | grep mldevops; then docker stop mldevops;docker container rm mldevops;
fi
docker run -p 5000:5000 --name mldevops mldevops