#!/bin/bash
if docker ps | grep mldevops; then docker stop mldevops;docker container rm mldevops;
else echo 'no mldevops process continue'
fi
# docker run -p 5000:5000 --name mldevops mldevops