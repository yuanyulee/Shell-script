#!/bin/bash
test="$(/usr/bin/curl -I -s $1 | grep 'HTTP/1.1 200')"
while true; do
  datestr="$(/bin/date +%Y%m%d-%H:%M:%S)"
  if [ "$test" == "" ] ; then
    echo "$1;0;$datestr" >> log.txt
    echo "$1;0;$datestr"
  else
    echo "$1;1;$datestr" >> log.txt
    echo "$1;1;$datestr"
  fi
  sleep 2s //test url in 2 second
done
