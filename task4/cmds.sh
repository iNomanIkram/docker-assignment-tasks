#!/usr/bin/env bash
apk update
apk add docker openrc
addgroup $username docker
rc-update add docker boot
service docker start
docker run -d --network host nginx