#!/bin/bash

# Users
useradd -m student
useradd -m backup_admin

# Wrong date
date -s "2003-04-15 10:00:00"

# Home files
mkdir -p /home/student
echo "normal file" > /home/student/file.txt

# Hidden investigation
mkdir -p /tmp/.cache/.logs/.hidden
echo "structure matters more than content" > /tmp/.cache/.logs/.hidden/clue.txt

# Noise
echo "password=1234" > /home/student/fake.txt

# Permissions issue
touch /home/student/exploit.sh
chmod 777 /home/student/exploit.sh

# Process
echo -e "#!/bin/bash\nsleep 9999" > /tmp/system_backup
chmod +x /tmp/system_backup
/tmp/system_backup &
echo $! > /tmp/malicious_pid

# Puzzle
mkdir -p /opt/puzzle/F /opt/puzzle/L /opt/puzzle/A /opt/puzzle/G
touch /opt/puzzle/F/f1
touch /opt/puzzle/L/l1
touch /opt/puzzle/A/a1
touch /opt/puzzle/G/g1

chown -R student:student /home/student
