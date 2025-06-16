#!/bin/bash
sudo apt-get update -qq
sudo apt-get install -y haproxy
sudo systemctl enable haproxy