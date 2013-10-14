#!/bin/bash

# This script will find all the PID's of the PROCESS_NAME processes
# that have been running for 10 minutes or more and send each PID a
# SIGKILL.
 
PIDS="`ps ax | egrep "PROCESS_NAME" | grep ":10" | awk '{print $1}'`"
for i in ${PIDS}; do { echo "Killing $i"; kill -9 $i; }; done;
