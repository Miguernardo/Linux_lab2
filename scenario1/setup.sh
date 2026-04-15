#!/bin/bash

mkdir -p /home/ubuntu/lab
cd /home/ubuntu/lab

echo "Welcome to Linux Lab" > welcome.txt
echo "secret_key=alpha123" > hidden.txt

mkdir data
echo "log entry 1" > data/log.txt

chmod 777 hidden.txt

chown -R ubuntu:ubuntu /home/ubuntu/lab
