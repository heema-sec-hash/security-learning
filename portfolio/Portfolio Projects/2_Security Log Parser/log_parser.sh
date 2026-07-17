#!/bin/bash

# Log Parer - Extract & analyze log entries
# Usage: ./log_parser.sh [logfile]

# Check if a filename was provided

logfile="$1"
if [ -z "$logfile" ]; then
	echo "Usage: ./log_parser.sh <logfile>"
	exit 1
fi

echo "=== ERROR ENTRIES ==="
grep "ERROR" "$logfile"

echo ""
echo "=== ERROR TYPE COUNTS ==="
grep "ERROR" "$logfile" | awk '{print $4, $5}' | sort | uniq -c | sort -nr

echo ""
echo "=== FAILED LOGIN ATTEMPTS ==="
grep "Failed login" "$logfile"

echo ""
echo "=== FAILED LOGIN BY IP ==="
grep "Failed login" "$logfile" | awk '{print $NF}' | sort | uniq -c | sort -nr

echo ""
echo "=== SUMMARY ==="
total_lines=$(wc -l < "$logfile")
error_count=$(grep -c "ERROR" "$logfile")
warn_count=$(grep -c "WARN" "$logfile")
info_count=$(grep -c "INFO" "$logfile")
echo "Total lines: $total_lines"
echo "Errors: $error_count"
echo "Warnings: $warn_count"
echo "Info: $info_count"
