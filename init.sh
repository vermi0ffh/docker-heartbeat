#!/bin/bash

# Demarrage HeartBeat
/usr/lib/heartbeat/heartbeat

while true; do
  # Une verification toutes les 10 secondes
  sleep 10
  
  # On arrete le script si le service n'est plus UP
  if [[ `/usr/lib/heartbeat/heartbeat -s | grep -v 'heartbeat OK' | wc -l` -ne 0 ]]; then
    break;
  fi
done