#!/bin/bash

cd ~/mattermost-docker
docker-compose down
/home/ubuntu/letsencrypt/letsencrypt-auto certonly --reinstall --standalone -d chat.medicaldepartures.com && sudo cp /etc/letsencrypt/live/chat.medicaldepartures.com/*.pem ~/mattermost-docker/volumes/web/cert
docker-compose up -d

