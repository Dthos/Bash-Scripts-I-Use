#!/bin/bash
perl /tmp/./gdown.pl 'https://' /tmp/agents-linux.zip
chmod +x /tmp/agents-linux.zip
apt-get -y install unzip
mkdir /tmp/agents-linux/
unzip -d /tmp/agents-linux/ /tmp/agents-linux.zip
apt-get -y remove unzip
chmod u+x /tmp/agents-linux/agent_installer.sh
/tmp/agents-linux/./agent_installer.sh install_start