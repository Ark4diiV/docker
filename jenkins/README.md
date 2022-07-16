# Jenkins Dockerfile
Jenkins: latest
Java: openjdk-11-jre-headless
# How to
## Build image
`docker build -t jenkins:latest .`
## Run container
`docker run --mount type=volume,source=jenkins-data,destination=/root -d -p 8080:8080 -p 50000:50000 jenkins:latest`