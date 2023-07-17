#!/bin/bash

if [ "$#" -gt 0 ]; then
    # Container initialization
    if [ "$1" = "build" ]; then
        echo 'Building k6 image...'
        # Create a temporary Dockerfile
        echo 'FROM grafana/k6' >Dockerfile.temp
        # Build the Docker image based on the temporary Dockerfile
        docker build -t k6-container -f Dockerfile.temp .
        # Remove the temporary Dockerfile
        rm Dockerfile.temp
    fi
    # Run the container in interactive mode
    if [ "$1" = "run" ]; then
        echo 'Running k6 container in interactive mode...'
        # Run the container from the k6-container image with a volume for the current directory
        docker run -it --name k6 -v "$(pwd):/scripts" k6-container run /scripts/test.js
    fi
    # Stop and remove the container
    if [ "$1" = "stop" ]; then
        echo 'Stopping and removing the k6 container...'
        docker stop k6
        docker rm k6
    fi
else
    echo 'Invalid command. Use "build" to build the image, "run" to run the container in interactive mode, or "stop" to stop and remove the container.'
fi
