#!/bin/bash
apt update;
apt install docker docker-compose --y;
dockerd&;
docker-compose up