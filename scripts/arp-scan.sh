#!/bin/bash
/usr/sbin/arp -an | awk '
/ether/ {
  gsub(/[()]/,"",$2)
  cmd="date +%s%N"
  cmd | getline ts
  close(cmd)
  print "arp_table,source=home value=1,ip=\"" $2 "\",mac=\"" $4 "\" " ts

}'
