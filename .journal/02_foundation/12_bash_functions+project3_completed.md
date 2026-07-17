\## Track



•	\[x] Bash functions (declare, call, local, return)

•	\[x] HTTP status codes (200, 404, 500, 000)

•	\[x] curl advanced flags (-s, -o, -w, --connect-timeout)

•	\[x] Project 3: HTTP Health Checker built

•	\[x] Project 3 README created

•	\[x] Project 3 pushed to GitHub



\## Real-World Connection



| Topic | Why It Matters |

|-------|----------------|

•	| \*\*Functions\*\* | OSCP scripts have 50+ lines. Functions keep them readable and reusable. |

•	| \*\*curl + HTTP\*\* | Every web app pentest uses curl. Burp is great, but curl is your swiss army knife. |

•	| \*\*Logging\*\* | Automate monitoring. If you can check 10 servers, you can check 1,000 with cron. |

•	| \*\*Status codes\*\* | 200 = OK, 404 = missing, 500 = server crashed, 000 = network down. Learn them. |

•	\*\*How attackers use this:\*\* They check which web servers are up before scanning them.

•	\*\*How defenders use this:\*\* They monitor critical services and get alerts before users notice downtime.



\## Common Mistakes



| Mistake | Fix |

|---------|-----|

•	| Forgetting `--connect-timeout` | Without it, curl hangs forever on dead URLs. Always set timeout. |

•	| `-o /dev/null` omitted | Terminal fills with HTML output. Always discard body. |

•	| Forgetting `local` keyword | Variables become global and cause unexpected bugs. Use `local` inside functions. |

•	| Not skipping empty lines | `while read` with empty lines breaks. Add `\\\[ -z "$url" ] \\\&\\\& continue`. |



\## Notes / Issues

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

