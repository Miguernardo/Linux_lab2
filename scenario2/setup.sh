#!/bin/bash

useradd -m student

date -s "2005-01-01 10:00:00"

mkdir -p /tmp/.hidden/logs
echo "clue: structure" > /tmp/.hidden/logs/clue.txt

touch /home/student/exploit.sh
chmod 777 /home/student/exploit.sh

echo -e "#!/bin/bash\nsleep 9999" > /tmp/malicious
chmod +x /tmp/malicious
/tmp/malicious &

mkdir -p /opt/puzzle/F /opt/puzzle/L /opt/puzzle/A /opt/puzzle/G
