#!/bin/bash
set -e

containerID=$(docker ps | awk -F" " '{print $1}')

# Stop the running container (if any)
echo "Stopping running container"

docker rm -f $containerID
