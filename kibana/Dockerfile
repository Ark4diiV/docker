FROM ubuntu:20.04
LABEL maintainer=Ark4diiV
ENV DEBIAN_FRONTEND noninteractive
ENV publicBaseUrl=http://0.0.0.0
ARG http_port=5601
WORKDIR /opt
ADD https://artifacts.elastic.co/downloads/kibana/kibana-8.2.1-linux-aarch64.tar.gz .
RUN apt-get update && apt-get upgrade -y && apt-get install curl -y && curl -s https://raw.githubusercontent.com/Ark4diiV/docker/main/kibana/kibana.sh | sh
EXPOSE ${http_port}
CMD ["sh", "-c", "/opt/kibana/bin/kibana --allow-root --server.host=0.0.0.0 --server.publicBaseUrl=${publicBaseUrl}"]