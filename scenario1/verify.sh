#!/bin/bash

FAIL=0

grep -q "FLAG1_found_user" /home/ubuntu/lab/report.txt || FAIL=1
grep -q "FLAG4_secret_found" /home/ubuntu/lab/report.txt || FAIL=1

PERM=$(stat -c "%a" /home/ubuntu/lab/hidden.txt)
if [ "$PERM" != "600" ]; then FAIL=1; fi

if [ $FAIL -eq 0 ]; then
  echo "Completed"
  exit 0
else
  echo "Incomplete"
  exit 1
fi
