#!/bin/bash

mkdir -p /home/ubuntu/investigation
mkdir -p /home/ubuntu/data/logs
mkdir -p /home/ubuntu/data/users
mkdir -p /home/ubuntu/data/archive
mkdir -p /home/ubuntu/.hidden
mkdir -p /home/ubuntu/tmp

cat <<EOF > /home/ubuntu/README.txt
System status report:

FLAG1{system_access_granted}

Some unusual behavior has been detected.
Please investigate.
EOF

cat <<EOF > /home/ubuntu/data/logs/system.log
[INFO] System boot at 08:21
[INFO] User ubuntu logged in
[INFO] Network interface initialized
[WARNING] Suspicious activity in /tmp
[INFO] Scheduled backup started
[INFO] Backup completed successfully
[WARNING] Unusual activity detected
[INFO] Cron job executed
[INFO] System health check OK
[WARNING] Suspicious keyword detected: password
[INFO] Disk usage normal
[INFO] User logout
EOF
echo "FLAG3{search_success}" >> /home/ubuntu/data/logs/system.log
cat <<EOF > /home/ubuntu/data/users/notes.txt
Internal note:
Permissions were previously unsafe.

If you fixed this correctly:
FLAG4{permissions_secured}
EOF

chmod 777 /home/ubuntu/data/users/notes.txt

echo "Old file" > /home/ubuntu/data/archive/old.txt

cat <<EOF > /home/ubuntu/data/users/fake_credentials.txt
username=test_user
password=123456
EOF

echo "[WARNING] Hidden directory usage detected" >> /home/ubuntu/data/logs/system.log

cat <<EOF > /home/ubuntu/data/users/admin_note.txt
Reminder:

Temporary directories should be cleaned regularly.
Do not leave sensitive files exposed.
EOF

touch /home/ubuntu/data/archive/file1.txt
touch /home/ubuntu/data/archive/file2.txt
touch /home/ubuntu/data/archive/backup.log
touch /home/ubuntu/data/archive/temp.data
touch /home/ubuntu/.cache
touch /home/ubuntu/.config

mkdir -p /home/ubuntu/data/archive/old/backups
echo "old system data" > /home/ubuntu/data/archive/old/backups/legacy.txt

cat <<EOF > /home/ubuntu/.hidden/credentials.txt
admin_password=SuperSecret123

FLAG2{hidden_directory_found}
EOF

echo "RUNNING" > /tmp/process_flag

echo "temp file" > /home/ubuntu/tmp/cache.tmp

cp /bin/sleep /tmp/system_backup
/tmp/system_backup 3000 &
echo $! > /tmp/malicious_pid

chown -R ubuntu:ubuntu /home/ubuntu