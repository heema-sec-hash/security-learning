After completing a lab or CTF:
1. Summarize the exploit path (Recon → Vulnerability → Exploit → Post-Exploit).
2. Screenshot key steps (e.g., proof of root access).
3. Document alternative approaches (e.g., "Could also use SQLi instead of XSS").

Example:
# TryHackMe: Vulnversity Writeup

## Recon
- Ran `nmap -A 10.10.1.2` → Found port 3333 (HTTP).  
- Gobuster found `/internal/` (file upload vulnerability).

## Exploit  
- Uploaded PHP reverse shell → Triggered via LFI.  

## Post-Exploit  
- Found SUID binary → Used `find / -perm -4000` to escalate.