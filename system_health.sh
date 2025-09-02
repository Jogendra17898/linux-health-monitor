#!/bin/bash

#Show current date & time
#Show uptime
#Show CPU usage
#Show Memory usage
#Show Disk usage
#Show top 5 processes

# Linux Health monitoring Script 

echo "====================================="
echo "     System Health Report"
echo "====================================="

# Date and Time
echo "Date & Time : $(date)"
echo

# Uptime
echo "Uptime:"
uptime
echo

#CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk ' {print $2 + $4 "%"}'
echo

# Memory Usage 
echo "Memory Usage:"
free -m
echo

#Disk Usage
echo "Disk Usage:"
df -h | grep "^/dev"
echo

# Top 5 Processes 
echo "Top 5 Processes by CPU & Memory:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6