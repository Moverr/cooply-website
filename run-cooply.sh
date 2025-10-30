#!/bin/bash

# Container name
CONTAINER_NAME="cooply-web"
IMAGE_NAME="cooply-html"
PORT=8081

echo "Stopping any existing container named $CONTAINER_NAME..."
sudo docker stop $CONTAINER_NAME 2>/dev/null

echo "Removing any existing container named $CONTAINER_NAME..."
sudo docker rm $CONTAINER_NAME 2>/dev/null

echo "Running new container $CONTAINER_NAME..."
sudo docker run -d -p $PORT:80 --name $CONTAINER_NAME $IMAGE_NAME

echo "Done! Cooply is running at http://localhost:$PORT"
