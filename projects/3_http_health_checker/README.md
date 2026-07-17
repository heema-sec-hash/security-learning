# HTTP Health Checker

## Purpose

A Bash script that monitors the health of websites/services by checking HTTP status codes. Essential for service reliability monitoring.

## Features

- Reads list of URLs from a file
- Checks HTTP status (200, 404, 500, timeout)
- Logs results with timestamps
- Color-coded output (optional upgrade)

## Requirements

- `curl` installed (`sudo apt install curl`)

## Skills Demonstrated

- Bash functions
- HTTP/curl interaction
- Service monitoring
- Logging automation
- Error handling
- text

##  Common Mistakes

| Mistake | Fix |
|---------|-----|
| Forgetting `--connect-timeout` | Without it, curl hangs forever on dead URLs. Always set timeout. |
| `-o /dev/null` omitted | Terminal fills with HTML output. Always discard body. |
| Forgetting `local` keyword | Variables become global and cause unexpected bugs. Use `local` inside functions. |
| Not skipping empty lines | `while read` with empty lines breaks. Add `[ -z "$url" ] && continue`. |

## Real-World Connection

| Topic | Why It Matters |
|-------|----------------|
| **Functions** | OSCP scripts have 50+ lines. Functions keep them readable and reusable. |
| **curl + HTTP** | Every web app pentest uses curl. Burp is great, but curl is your swiss army knife. |
| **Logging** | Automate monitoring. If you can check 10 servers, you can check 1,000 with cron. |
| **Status codes** | 200 = OK, 404 = missing, 500 = server crashed, 000 = network down. Learn them. |
**How attackers use this:** They check which web servers are up before scanning them.
**How defenders use this:** They monitor critical services and get alerts before users notice downtime.
** This is essentially a simplified uptime monitor—the same idea used by monitoring platforms like UptimeRobot, Pingdom, and enterprise monitoring systems.

## Example Output

Starting health check at Fri Jul 17 08:45:09 PM +03 2026

Logging to: health_check_20260717_204509.log

[2026-07-17 20:45:10] https://google.com - Status: DOWN (HTTP 301)
[2026-07-17 20:45:10] https://github.com - Status: UP (200 OK)
[2026-07-17 20:45:10] https://nonexistent-domain-xyz123.com - Status: DOWN (Connection Failed / Timeout)
[2026-07-17 20:45:11] https://reddit.com - Status: DOWN (HTTP 301)

Health check complete. Results saved to health_check_20260717_204509.log.

## How to Run

```bash
chmod +x health_checker.sh
./health_checker.sh urls.txt