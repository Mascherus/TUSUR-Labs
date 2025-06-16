#!/bin/bash
sudo apt-get update -qq
sudo apt-get install apache2 -y
sudo systemctl enable apache2