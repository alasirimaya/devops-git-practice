#!/bin/bash
set -euo pipefail

echo "Starting automated deployment..."

cd /home/opc/devops-git-practice
git pull --ff-only origin main

cd /home/opc/body-tracker-app
podman-compose up -d --build

echo "Deployment completed successfully!"
podman ps
