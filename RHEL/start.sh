#!/bin/bash

# Load environment variables
source .env

# Generate alertmanager.yml from template
envsubst <alertmanager/alertmanager.yml.template >alertmanager/alertmanager.yml

# Start docker compose
docker-compose up -d

echo "✅ Services started with environment variables loaded!"
