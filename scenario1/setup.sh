#!/bin/bash

mkdir -p /home/ubuntu/lab
cd /home/ubuntu/lab

echo "Welcome" > welcome.txt
echo "secret=flag" > hidden.txt

chmod 777 hidden.txt

# fake process
echo -e "#!/bin/bash\nsleep 9999" > /tmp/bad_process
chmod +x /tmp/bad_process
/tmp/bad_process &

chown -R ubuntu:ubuntu /home/ubuntu/lab
