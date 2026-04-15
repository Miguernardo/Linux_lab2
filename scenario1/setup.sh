mkdir -p /home/ubuntu/lab
cd /home/ubuntu/lab

echo "Welcome to Linux Lab" > welcome.txt
echo "This is a test file" > file1.txt
echo "Another example file" > file2.txt

mkdir data
echo "log entry 1" > data/log.txt
echo "log entry 2" >> data/log.txt

chown -R ubuntu:ubuntu /home/ubuntu/lab
