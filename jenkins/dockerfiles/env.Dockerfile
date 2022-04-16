FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get -y install apt-utils && \
    apt-get --no-install-recommends install -q -y openjdk-8-jre-headless
RUN apt-get autoremove && \
    apt-get autoclean
