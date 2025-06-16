#!/bin/bash
sudo mysql << 'EOSQL'
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
FLUSH PRIVILEGES;
CREATE DATABASE testdb;
CREATE USER 'vagrant_test'@'192.168.50.10' IDENTIFIED BY 'Tusur123';
GRANT ALL PRIVILEGES ON testdb.* TO 'vagrant_test'@'192.168.50.10';
FLUSH PRIVILEGES;
EOSQL
sudo sed -i "s/bind-address.*/bind-address = 192.168.50.11/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql