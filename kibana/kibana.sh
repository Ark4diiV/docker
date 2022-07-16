#!/bin/bash
mkdir /opt/kibana
tar -xf kibana-8.2.1-linux-aarch64.tar.gz -C kibana --strip-components=1
rm kibana-8.2.1-linux-aarch64.tar.gz