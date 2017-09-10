#!/bin/bash
cd ~
wget https://github.com/gravitational/teleport/releases/download/v2.3.0-rc2/teleport-v2.3.0-rc2-linux-amd64-bin.tar.gz
tar -xzvf teleport-v2.3.0-rc2-linux-amd64-bin.tar.gz

cd teleport
sudo make install

teleport start --roles=node --token= --auth-server=
