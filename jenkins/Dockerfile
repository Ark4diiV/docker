FROM ubuntu:20.04
LABEL maintainer=Ark4diiV
ENV DEBIAN_FRONTEND noninteractive
ARG http_port=8080
ARG agent_port=50000
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install curl -y \
&& curl -s https://raw.githubusercontent.com/Ark4diiV/docker/main/jenkins/jenkins.sh | sh
WORKDIR /opt/jenkins
ADD https://get.jenkins.io/war-stable/latest/jenkins.war .
EXPOSE ${http_port}
EXPOSE ${agent_port}
CMD ["sh", "-c", "java -jar /opt/jenkins/jenkins.war"]