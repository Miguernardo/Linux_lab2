#!/bin/bash

FAIL=0

grep -q "FLAG1_environment" /home/student/report.txt || FAIL=1
grep -q "FLAG3_hidden" /home/student/report.txt || FAIL=1

PERM=$(stat -c "%a" /home/student/exploit.sh)
if [ "$PERM" != "700" ]; then FAIL=1; fi

if [ $FAIL -eq 0 ]; then
  echo "Mission Complete"
  exit 0
else
  echo "Still incomplete"
  exit 1
fi
