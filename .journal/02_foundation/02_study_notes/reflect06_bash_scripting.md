1\. Which command did I use most today?

echo



2\. Which command confused me most?

sed , grep -v



3\. What real-world problem does today's project solve?

Troubleshooting systems when something is "off"



4\. Could I explain Bash variables to someone else?

Yes. Think of a variable as a labeled storage box. You give it a name (like count), put a value inside (like 1), and use the $ sign to "peek" inside the box later to see what value it holds.



5\. How would an attacker use this knowledge?

Attackers use script variables to store stolen data (like passwords or IP addresses) or to automate "reconnaissance." They might write a script to cycle through thousands of IP addresses using a while loop, checking which ones are vulnerable.



6\. How would a defender use this knowledge?

Defenders use these scripts to automate audits. By gathering system data (like process lists or open ports) quickly, a defender can spot an "anomaly"—a process or IP address that shouldn't be there—long before an attacker can hide their tracks.



7. If I wanted to collect one more piece of information, what would it be?

I would add Listening Ports. Using ss -tuln would allow me to see exactly which services are "listening" for incoming connections, which is vital for identifying potential security backdoors.

