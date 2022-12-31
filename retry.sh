#!/bin/bash
#temporary script to restart livetest for debugging
docker rm livetest
docker run -it --name livetest -p 3000:3000 shuttlecraft-pod:latest /bin/bash
