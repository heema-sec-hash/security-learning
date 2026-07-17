# Log Parser

## Purpose
A Bash script that extracts, counts, and analyzes log entries. Designed for incident response and system monitoring.

## Features
- Display all ERROR entries
- Count error types by keyword
- Show failed login attempts
- Count failed logins by IP address
- Summary statistics (total lines, errors, warnings, info)

## Requirements
- Linux system
- Bash
- grep, cut, awk, sort, uniq, wc (standard Linux tools)

## Skills Demonstrated
• Bash scripting
• Log parsing
• Text processing (grep, cut, awk, sort, uniq)
• Automation
• Pattern recognition


## Project Structure 
log_parser/ 
├── log_parser.sh 
├── test_sample.log 
├── README.md 
└── sample_output.txt

## How to Run
```bash
chmod +x log_parser.sh
./log_parser.sh sample.log
./log_parser.sh sample.log > sample_output.txt (to save a sample on your system)
