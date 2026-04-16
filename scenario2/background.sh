#!/bin/bash

# Structure
mkdir -p ~/logs ~/data ~/backup ~/tmp ~/suspicious

# Legit files
echo "System running normally" > ~/logs/syslog
echo "User login successful" > ~/logs/auth.log
echo "Daily operations completed" > ~/data/notes.txt

# Noise
for i in {1..50}; do
  echo "Random log entry $i" >> ~/logs/noise.log
done

# Suspicious log entry
echo "ERROR: unauthorized access from 192.168.1.50" >> ~/logs/auth.log

# Hidden malicious script
cat << 'EOF' > ~/suspicious/.hidden_script.sh
#!/bin/bash
while true; do
  echo "sending data..."
  sleep 5
done
EOF

chmod +x ~/suspicious/.hidden_script.sh

# Run malicious process
~/suspicious/.hidden_script.sh &

# Dangerous file
echo "password=root123" > ~/data/config.tmp
chmod 777 ~/data/config.tmp

# Misleading files
echo "Nothing suspicious here" > ~/backup/old_backup.txt
echo "Temporary file" > ~/tmp/random.tmp

# Hidden clue
echo "Check permissions in /data" > ~/suspicious/readme.txt
