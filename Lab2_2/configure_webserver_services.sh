#!/bin/bash
sudo apt-get update -qq
sudo apt-get install -y apache2 php libapache2-mod-php php-mysql mysql-client
sudo tee /var/www/html/test_db.php << 'EOPHP'
<?php
$host = "192.168.50.11";
$user = "vagrant_test";
$pass = "Tusur123";
$db = "testdb";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);
echo "Connected to MySQL successfully!";
?>
EOPHP
sudo systemctl restart apache2