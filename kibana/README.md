# Kibana Dockerfile
This build is for Linux aarch64
# How to
## Build image
`docker build -t kibana:8.1.2 .`
## Run container
`docker run -d -p 5601:5601 kibana:8.1.2`
## Run container with custom public base url
`docker run -d -e publicBaseUrl=http://kibana.domain.com -p 5601:5601 kibana:8.1.2`