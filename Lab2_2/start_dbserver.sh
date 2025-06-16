#!/bin/bash
sudo apt-get update -qq
sudo apt-get install -y mysql-server
sudo systemctl enable mysql