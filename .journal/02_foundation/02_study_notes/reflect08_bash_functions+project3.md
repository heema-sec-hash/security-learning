1. What did `-o /dev/null` do in the curl command?
2. Why use `local` inside a function?
3. What would happen if you removed the `--connect-timeout 5`?
4. How would you modify the script to send a notification (email/Slack) when a site is down?
5. What's the difference between return code 0 and 1 in a function?
6. Why does check\_url() return only the status code?
7. Why use local variables inside functions?
8. Why is logging important for long-running scripts?
9. If one website is down, should the script stop or continue? Why?
10. How could this script become a daily monitoring tool?



\---



1. Discard Body: It discards the website's HTML content so you only see the status code, keeping your terminal and logs clean.
2. Scope Control: It restricts the variable to that specific function, preventing it from accidentally changing or being overwritten by variables with the same name elsewhere in your script.
3. Hanging: The script would wait for the default system timeout (often 60+ seconds). If a site is unresponsive, your entire script would stall and process URLs much too slowly.
4. Integration: Add an if block inside the loop (after log\_result) that triggers a command like mail or uses curl to send a payload to a Slack Webhook URL when a site is "DOWN."
5. Success vs. Error: In Linux, 0 represents success (true), and any non-zero value (usually 1) represents an error or failure (false).
6. Piping/Capture: Returning only the code allows you to capture it directly into a variable (e.g., status=$(check\_url)) without getting "noise" from other commands or text.
7. Namespace Safety: It ensures that a local variable doesn't conflict with global variables, making the script modular, predictable, and easier to debug.
8. Traceability: It provides a historical audit trail, allowing you to identify when an outage started and how long it lasted, which is impossible to know without a log.
9. Continue: The script should continue. A single site failure is likely unrelated to the health of the others; stopping would prevent you from discovering if the problem is isolated or widespread.
10. Automation: Use cron (Linux job scheduler). You would add a line to your crontab to execute the script automatically at your preferred interval (e.g., every 30 minutes).

