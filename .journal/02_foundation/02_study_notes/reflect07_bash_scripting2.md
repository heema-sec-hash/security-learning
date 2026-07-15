1. Which command did I use most today?
echo



2\. Which command confused me most?
wc -l < "$1"



3\. What real-world problem does today's project solve?

to quickly extract and analyze log data during incident response or investigations.



4\. How would an attacker use this knowledge?

to find useful information during reconnaissance.



5\. How would a defender use this knowledge?

to identify patterns in logs, nvestigate incidents and hunt for suspicious behavior.



6\. Which command inside my script was new to me?

* if \[ -z "$logfile" ]; then
* awk '{print $4, $5}'
* total\_lines=$(wc -l < "$logfile")

