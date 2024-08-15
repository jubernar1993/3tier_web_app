#!/bin/bash
yum update -y 
  yum install httpd -y
   systemctl start httpd
      systemctl enable httpd
       touch /var/www/html/index.html
        echo "<h1>This is to confirm that the web server is UP & RUNNING!!!</h1>" > /var/www/html/index.html