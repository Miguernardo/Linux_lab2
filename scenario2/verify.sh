#!/bin/bash

FAIL=0

grep -q "FLAG1_environment" /home/student/report.txt || FAIL=1
grep -q "FLAG2_users" /home/student/report.txt || FAIL=1
grep -q "FLAG3_hidden" /home/student/report.txt || FAIL=1

PERM=$(stat -c "%a" /home/student/exploit.sh)
if [ "$PERM" != "700" ]; then FAIL=1; fi

PID=$(cat /tmp/malicious_pid)
ps -p $PID > /dev/null 2>&1
if [ $? -eq 0 ]; then FAIL=1; fi

grep -q "FLAG6_puzzle" /home/student/report.txt || FAIL=1

if [ $FAIL -eq 0 ]; then
  echo "Mission Completed"
  exit 0
else
  echo "Investigation incomplete"
  exit 1
fi
