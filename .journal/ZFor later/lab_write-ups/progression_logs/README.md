example
#Date: ________________

* Topics: Nmap advanced scanning, Wireshark TCP analysis
* Tools: nmap -sS -p- --script vuln, tcpdump -i eth0 host 10.0.2.15
* Key Takeaway: Stealth scans (-sS) avoid full TCP handshake.
* Struggle: ARP spoofing failed in lab → Solution: Enabled IP forwarding (echo 1 > /proc/sys/net/ipv4/ip\_forward)