#!/usr/bin/env bash
docker stop awscli_assignment && docker rm awscli_assignment
docker build -t nomanikram/docker-assignment1 .
docker run --name awscli_assignment -it  nomanikram/docker-assignment1

# task 2
# one time step
docker login
docker push nomanikram/docker-assignment1:latest