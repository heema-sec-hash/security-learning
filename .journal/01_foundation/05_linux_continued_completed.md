\## Bandit Passwords Saved



| Level | Password |

|-------|----------|

| 10 → 11 | (from base64 -d) |

| 11 → 12 | (from tr ROT13) |

| 12 → 13 | (from decompressed file) |

| 13 → 14 | (from /etc/bandit\_pass/bandit14) |

| 14 → 15 | (from nc localhost 30000) |



\## Commands Learned Today



| Command | Use |

|---------|-----|

| `base64 -d` | Decode Base64 data |

| `tr 'A-Za-z' 'N-ZA-Mn-za-m'` | Decode ROT13 text |

| `xxd -r` | Convert hexdump back to binary |

| `gzip -d` | Decompress `.gz` files |

| `bzip2 -d` | Decompress `.bz2` files |

| `tar -xf` | Extract `.tar` archives |

| `ssh -i` | Use SSH private key to connect |

| `nc` | Netcat – send/receive data over network |



\## Real-World Connection



Today I learned...



\- Base64 is everywhere in APIs and web applications.

\- SSH keys are commonly used to access Linux cloud servers.

\- Netcat can test ports and is widely used during penetration testing.

\- Compressed archives are common on Linux servers and backups.



\## Notes / Issues

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

