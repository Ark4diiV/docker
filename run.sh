#!/bin/bash
docker kill jenkins
docker rm jenkins
docker run --mount type=volume,source=jenkins-data,destination=/root -p 8080:8080 -p 50000:50000 -dt --name jenkins jenkins:latest