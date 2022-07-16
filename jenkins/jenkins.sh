#!/bin/bash
mkdir /opt/jenkins
apt-get -y install apt-utils bind9-utils git sshpass tini daemon net-tools psmisc
apt-get --no-install-recommends install -q -y openjdk-11-jre-headless