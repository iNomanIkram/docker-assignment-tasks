#!/usr/bin/env bash
docker exec task5_nginx_proxy_1  nginx -t
docker exec task5_nginx_static_1 nginx -t
docker exec task5_nginx_proxy_1 service nginx reload
docker exec task5_nginx_static_1 service nginx reload
