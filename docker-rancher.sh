#!/bin/bash

HEADER="Docker rancher -"

echo "$HEADER in process..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CADDY=$DIR/caddy
mkdir -p $CADDY

wget https://raw.githubusercontent.com/beyond-coding/docker-rancher/master/Caddyfile
cp Caddyfile $CADDY/.
rm Caddyfile

echo "$HEADER starting..."

wget https://raw.githubusercontent.com/beyond-coding/docker-rancher/master/docker-compose.yml

docker-compose up -d