#!/bin/bash

# 先啟動 stable-diffusion-webui-docker
cd stable-diffusion-webui-docker
docker compose --profile download up --build
sleep 300
docker compose --profile auto up -d --build
cd ..

# 啟動 fish-speech
docker-compose -f docker-compose.fishspeech.yaml up -d --build

# 啟動 open-webui
docker-compose -f docker-compose.openwebui.yaml up -d --build