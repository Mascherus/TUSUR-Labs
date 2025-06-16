#!/bin/bash
sudo tee /etc/haproxy/haproxy.cfg << 'EOCFG'
frontend http_front
  bind *:80
  default_backend http_back

backend http_back
  balance roundrobin
  server webserver1 192.168.50.10:80 check inter 5000 rise 2 fall 3
EOCFG
sudo systemctl restart haproxy
