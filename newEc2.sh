#!/bin/bash
cd ~
wget https://github.com/gravitational/teleport/releases/download/v2.2.7/teleport-v2.2.7-linux-amd64-bin.tar.gz
tar -xzvf teleport-v2.2.7-linux-amd64-bin.tar.gz

cd teleport
sudo make install

sudo rm -r /var/lib/teleport

sudo ./teleport start --roles=node --auth-server=<Server>:3025 --token=<token> --nodename=$(hostname) &
