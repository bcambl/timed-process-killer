#!/bin/bash
 
PIDS="`ps ax | egrep "PROCESS_NAME" | grep ":10" | awk '{print $1}'`"
for i in ${PIDS}; do { echo "Killing $i"; kill -9 $i; }; done;
