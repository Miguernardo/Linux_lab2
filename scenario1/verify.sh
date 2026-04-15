#!/bin/bash

FAIL=0

grep -q "FLAG1_found_user" /home/ubuntu/lab/report.txt || FAIL=1
grep -q "FLAG2_files_created" /home/ubuntu/lab/report.txt || FAIL=1
grep -q "FLAG3_report_started" /home/ubuntu/lab/report.txt || FAIL=1
grep -q "FLAG4_secret_found" /home/ubuntu/lab/report.txt || FAIL=1

PERM=$(stat -c "%a" /home/ubuntu/lab/hidden.txt)
if [ "$PERM" != "600" ]; then FAIL=1; fi

if [ $FAIL -eq 0 ]; then
  echo "Scenario 1 Completed"
  exit 0
else
  echo "Keep going"
  exit 1
fi
