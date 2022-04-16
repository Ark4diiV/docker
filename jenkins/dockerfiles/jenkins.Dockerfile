FROM ubuntu-openjdk:latest
ENV DEBIAN_FRONTEND noninteractive

# Variables:
ARG http_port=8080
ARG agent_port=50000

# Runs:
RUN apt install -y bind9-utils git sshpass tini daemon net-tools psmisc
RUN mkdir /opt/jenkins
COPY jenkins.war /opt/jenkins/jenkins.war

# Ports:
EXPOSE ${http_port}
EXPOSE ${agent_port}

CMD ["java", "-jar", "/opt/jenkins/jenkins.war"]
