#!/usr/bin/env bash
docker stop dind_assignment && docker rm dind_assignment
docker build -t nomanikram/dind_assignment .
docker run --name dind_assignment --privileged -v /var/run/docker.sock:/var/run/docker.sock  --rm -it -p 80:80 nomanikram/dind_assignment

# docker exec -it dind_assignment sh
# docker run --name nginx -p 80:80 -d nginx
