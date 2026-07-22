• a running list of frequently used commands (e.g., Nmap, Bash, Metasploit).
• Add context: What the command does, when to use it, and examples.

Example:
## Nmap Cheat Sheet  
- **Basic Scan**: `nmap -sV 192.168.1.1` (Service detection)  
- **Stealth Scan**: `nmap -sS -T4 10.0.2.15` (SYN scan, faster)  
- **UDP Scan**: `nmap -sU -p 53,161` (Check DNS/SNMP)