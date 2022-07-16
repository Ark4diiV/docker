#!/bin/bash
mkdir /opt/kibana
tar -xvf kibana-8.2.1-linux-aarch64.tar.gz -C kibana --strip-components=1
rm kibana-8.2.1-linux-aarch64.tar.gz
apt-get autoremove -y
apt-get autoclean