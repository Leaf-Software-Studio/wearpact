#!/bin/bash

# Exit on error
set -e

# Set default environment variables if not set
export DOCDB_USER=${DOCDB_USER:-"admin"}
export DOCDB_PASSWORD=${DOCDB_PASSWORD:-"admin"}
export DOCDB_HOST=${DOCDB_HOST:-"localhost"}
export DOCDB_PORT=${DOCDB_PORT:-"27017"}
export DOCDB_DB=${DOCDB_DB:-"wearpact"}
export PAYLOAD_SECRET=${PAYLOAD_SECRET:-"your-secret-key"}

echo "Building wearpact-client image..."
cd wearpact-client
docker-compose -f docker-compose.prod.yml build
cd ..

echo "Building wearpact-admin images..."
cd wearpact-admin
docker-compose -f docker-compose.prod.yml build
cd ..

echo "All images built successfully!" 