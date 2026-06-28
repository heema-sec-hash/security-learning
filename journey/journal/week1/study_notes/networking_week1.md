1. What is your IPv4 Address (IP)? 192.168.1.5
2. What is your Subnet Mask? 255.255.255.0 (CIDR: /24 bit out of 32=4 octets)
3. What is your Default Gateway? 192.168.1.1
4. Did ping 8.8.8.8 succeed? (Yes/No) Yes
5. What was the average response time? 1-2sec\\
6. What's your Network address? IP: 192(255).168(255).1(255).0(0)=192.168.1.0



* What is DNS?

The "phonebook" of the internet. It translates human-friendly names (google.com) into machine-friendly IP addresses (142.250.190.46). Without it, you’d have to memorize numbers for every website.



* What is a Subnet Mask?

A 32-bit filter that splits an IP into two parts: the Network and the Host. It tells a device which part of the address is the "neighborhood" and which part is the "specific house."



* Difference between TCP and UDP?

TCP is the "Certified Mail" of the internet; it is slow but guarantees every packet arrives in order. UDP is "Screaming into a megaphone"; it is fast but doesn't care if anyone actually hears it.



* What did I observe in Wireshark?

Running a capture on my ethernet showed me some packets with "query" and "response" domains. I can see the source and the destination more clear now given the info and the expanded "domain system name" tap which gives more details on each packet that has been traced. There are flags as well, showing what went wrong while capturing (interacting with internet). I see the source and destination IP addresses, the specific ports being utilized (like 53 or 80), and the exact sequence of packet exchanges. I also observed the colorful breakdown of packet headers, payload data, and potential network errors or retransmissions.

