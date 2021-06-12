#!/bin/bash

# # Form Consul Cluster
# ps -C consul
# retval=$?
# if [ $retval -eq 0 ]; then
#   sudo killall consul
# fi
# sudo cp ~/consul-config/consul-server-east.hcl /etc/consul.d/consul-server-east.hcl
# sudo nohup consul agent --config-file /etc/consul.d/consul-server-east.hcl &>$HOME/consul.log &

# Form Nomad Cluster
ps -C nomad
retval=$?
if [ $retval -eq 0 ]; then
  sudo killall nomad
fi
sudo cp server.hcl /etc/nomad.d/server.hcl
sudo nohup nomad agent -config /etc/nomad.d/server.hcl &>$HOME/nomad.log &