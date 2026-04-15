#!/bin/bash

# test -f /home/ubuntu/investigation/report.txt || exit 1
# grep -q "SuperSecret123" /home/ubuntu/investigation/report.txt || exit 1

# echo "Mission Completed"

#!/bin/bash

FAIL=0

# FLAG 2 check
grep -q "FLAG2{hidden_directory_found}" /home/ubuntu/.hidden/credentials.txt || FAIL=1

# FLAG 3 check
grep -q "FLAG3{search_success}" /home/ubuntu/data/logs/system.log || FAIL=1

# FLAG 4 check (permissions)
PERM=$(stat -c "%a" /home/ubuntu/data/users/notes.txt)
if [ "$PERM" != "600" ]; then
  echo "Permissions not fixed"
  FAIL=1
fi

# FLAG 5 check (process must be killed)
PID=$(cat /tmp/malicious_pid)
ps -p $PID > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Process still running"
  FAIL=1
fi

# FLAG 6 check (report)
grep -q "FLAG6{mission_complete}" /home/ubuntu/investigation/report.txt || FAIL=1

# FINAL RESULT
if [ $FAIL -eq 0 ]; then
  echo "SUCCESS — System secured"
  exit 0
else
  echo "FAILED — Investigation incomplete"
  exit 1
fi