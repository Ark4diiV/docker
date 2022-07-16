# Kibana Dockerfile
This build made for Linux aarch64. For another platform you have to change tar url on kibana.sh
# How to
## Build image
`docker build -t kibana:8.1.2 .`
## Run container
`docker run -d -p 5601:5601 kibana:8.1.2`
## Run container with custom public base url
`docker run -d -e publicBaseUrl=http://kibana.domain.com -p 5601:5601 kibana:8.1.2`