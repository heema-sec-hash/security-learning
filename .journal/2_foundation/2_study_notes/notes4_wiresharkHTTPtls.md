* HTTP\_capture
Request Method	GET
Request Path	http://neverssl.com
HTTP Version	1.1
Host Header	Host: neverssl.com
User-Agent	Mozilla/5.0
Status Code	200
Content-Type	text/html



* DNS → TCP → TLS → HTTP Sequence
1	DNS	Find IP address of example.com
2	TCP	Establish connection (3-way handshake)
3	TLS	Encrypt the connection
4	HTTP	Send encrypted HTTP request



* while analyzing the output on Wireshark



* If you see HTTP/1.1 404 Not Found: The file path is likely non-existent.



* If you see HTTP/1.1 403 Forbidden: The file exists, but the server is actively denying you access. This is a "hit" for a security researcher, as it confirms the location of a sensitive file that you might later attempt to bypass (e.g., via path traversal or misconfiguration).



* can filter for a specific status code
ex: http.response.code == 403



* can filter for a target server
ex: ip.addr == 93.184.216.34



* can save specific packets from Wireshark following this:

  1. apply a certain filter
  2. go to file > Export Specified Packets...
  3. in the dialog box, ensure "Displayed" is selected under the "Packet Range" section"
  4. Give your file a name (e.g., 403\_hits.pcapng) and save it. This creates a compact file containing only the relevant traffic.



* if working on a remote server, use tshark command (the command-line version of Wireshark) to capture directly to a file
ex: sudo tshark -i eth0 -w capture.pcap
\* Captures traffic on interface eth0 and saves to capture.pcap.

