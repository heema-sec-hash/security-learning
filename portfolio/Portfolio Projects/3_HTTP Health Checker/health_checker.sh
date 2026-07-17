#!/bin/bash

# HTTP Health Checker
# Usage: ./health_checker.sh [urls_file]
# Checks HTTP status codes and logs results

URL_FILE="$1"
LOG_FILE="health_check_$(date +%Y%m%d_%H%M%S).log"

# Usage/Instructions
if [ -z "$URL_FILE" ]; then
	echo "Usage: ./health_checker.sh <urls_file>"
	exit 1
fi

# Safety check
if [ ! -f "$URL_FILE" ]; then
	echo "ERROR: File '$URL_FILE' not found."
	exit 1
fi

# Function 1: Return HTTP status code for a URL
function check_url() {
	local url="$1"
	local status_code=$(curl -s -o /dev/null -w "%{http_code}" "$url" --connect-timeout 5)
	echo "$status_code"
}

# Function 2: Logs results with timestamps
function log_result() {
	local url="$1"
	local status="$2"
	local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
	echo "[$timestamp] $url - Status: $status"
	echo "[$timestamp] $url - status: $status" >> "$LOG_FILE"
}

# Initializing log file
echo "Starting health check at $(date)"
echo "Logging to: $LOG_FILE"
echo "" > "$LOG_FILE"

# Input processor
while read -r raw_url; do

	# Strip leading and trailing whitespace
	url=$(echo "$raw_url" | xargs)

	# Skip empty line and comments
	if [[ -z "$url" || "$url" =~ ^# ]]; then
		continue
	fi

	# Determine status
	status=$(check_url "$url")
	if [ "$status" -eq 200 ]; then
		result="UP (200 OK)"
	elif [ "$status" -eq 404 ]; then
		result="DOWN (404 Not Found)"
	elif [ "$status" -eq 500 ]; then
		result="DOWN (500 Server Error)"
	elif [ "$status" -eq 000 ]; then
		result="DOWN (Connection Failed / Timeout)"
	else
		result="DOWN (HTTP $status)"
	fi

	# Log the result
	log_result "$url" "$result"

done < "$URL_FILE"

echo ""
echo "Health check complete. Results saved to $LOG_FILE."
