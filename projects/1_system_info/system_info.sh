#!/bin/bash

# System Information Collector
# Purpose: Gather and dsiplays key system information

echo "================================================="
echo "	SYSTEM INFORMATION REPORT"
echo "================================================="

# Hostname
echo "Hostname: $(hostname)"

echo "================================================="

# Current user
echo "Current User: $(whoami)"

echo "================================================="

# Date and time
echo "Date & Time: $(date)"

echo "================================================="

# Operating system
echo "OS Version: $(lsb_release -d | cut -f2 | sed 's/^[ \t]*//' || echo 'N/A')"

echo "================================================="

# Kernel version
echo "Kernel: $(uname -r)"

echo "================================================="

# CPU info
echo "CPU: $(cat /proc/cpuinfo | grep 'model name' | head -1 | cut -d':' -f2 | sed 's/^ //')"

echo "================================================="

# Memory info:
echo "Memory:"
free -h

echo "================================================="

# Disk usage
echo "Disk Usage:"
df -h

echo "================================================="

# Network info
echo "Network:"
ip addr | grep 'inet ' | grep -v '127.0.0.1'

echo "================================================="

# Running processes (top 5)
echo "Top 5 Processes by CPU:"
ps aux --sort=-%cpu | head -6

echo "==================================="
echo "	REPORT COMPLETE"
echo "==================================="
