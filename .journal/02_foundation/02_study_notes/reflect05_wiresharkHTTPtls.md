* Why is HTTP insecure?
It transmits data as plaintext without encryption. Anyone on the network path can intercept, read, and modify the data packets in transit.



* What information can anyone read from plain HTTP traffic?
Everything: login credentials (usernames/passwords), session cookies, API tokens, form data, and the content of the web pages themselves.



* Why does TLS start before HTTP data is exchanged?
To establish a secure "tunnel" first. The TLS handshake negotiates encryption keys so that once the HTTP request is actually sent, it is immediately protected.



* Could I explain the DNS → TCP → TLS → HTTP sequence?
Yes:
DNS: Finds the server's IP address.
TCP: Opens a connection to that IP.
TLS: Performs a handshake to encrypt the connection.
HTTP: Sends the actual request/data securely inside that encrypted tunnel.



* If a website returns 403 instead of 404, what might that tell me?
A 404 means the file doesn't exist. A 403 (Forbidden) means the file does exist, but the server is refusing to show it to you. This confirms the resource is there, which is a useful discovery for an attacker.



* Which Wireshark feature was most useful today?
The Display Filter bar (e.g., using http or ip.addr == x.x.x.x), as it allows you to isolate specific traffic from the massive amount of noise captured in a live session.

