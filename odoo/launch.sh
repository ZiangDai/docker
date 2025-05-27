#!/bin/bash

set -e

cd $(dirname "$0")

docker compose down --volumes
docker compose up -d

clear

docker logs -f odoo-backend
